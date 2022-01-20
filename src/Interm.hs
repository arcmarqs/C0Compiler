module Interm where

import Data.Map (Map)
import qualified Data.Map as Map
import Control.Monad.State
import ParserC0
import Data.Typeable

type Temp = String
type Label = String
type Table = Map String String
type Count = (Int,Int)

data Instr = MOVE Temp Temp
           | MOVEI Temp Int
           | OP BinOp Temp Temp Temp
           | OPI BinOp Temp Temp Int
           | LABEL Label
           | JUMP Label
           | COND Temp RelOp Temp Label Label
           | RETURN Temp
           | PRINTINT Temp
           | PRINTSTR Temp
           | CALL String [Temp]
           | SCANINT
           deriving Show

data FuncIR = FUNCIR String [Temp] [Instr]
              deriving Show

newTemp :: State Count Temp
newTemp = do (temps,labels )<-get
             put (temps+1,labels)
             return ("t"++show temps)

newLabel :: State Count Label
newLabel = do (temps,labels)<-get
              put (temps,labels+1)
              return ("L"++show labels)

insertVar :: Table -> String -> Temp -> State Count Table
insertVar tabl x temp = return (Map.insert x temp tabl)

extendTable:: Table -> [(Temp,String)] -> Table
extendTable tbl [] = tbl
extendTable tbl ((temp,x):rest) = extendTable (Map.insert x temp tbl) rest

popTemp:: Int -> State Count ()
popTemp n = do (temps,labels) <-get
               put (temps-n,labels)

getTemp :: State Count Int
getTemp = do (temps,labels) <- get
             return temps

transAst :: Table -> [Func] -> State Count [FuncIR]
transAst tabl [] = return []
transAst tabl (first:rest) = do temp <- transFunc tabl first
                                n <- getTemp
                                popTemp(n)
                                temp1 <- transAst tabl rest
                                return ([temp] ++ temp1)

transFunc :: Table -> Func -> State Count FuncIR
transFunc tabl (Funct _ name decls block) = do tabl1 <- getDeclFunc tabl decls
                                               tabl2 <- getDecl tabl1 (Block block)
                                               dclList <- getDeclList tabl1 decls
                                               code1 <- transBlock tabl2 block
                                               return (FUNCIR name dclList code1)

--get list of temps for FuncIR
getDeclList :: Table -> [Dcl] -> State Count [Temp]
getDeclList tabl [] = return []
getDeclList tabl ((tp,name):rest) = case Map.lookup name tabl of
                                      Just temp -> do temp1 <- getDeclList tabl rest
                                                      return ([temp] ++ temp1)
                                      Nothing -> error "variable not defined"

--get table with all temps defined
getDeclFunc :: Table -> [Dcl] -> State Count Table
getDeclFunc tabl [] = return tabl
getDeclFunc tabl (first:rest) = do table1 <- getDeclFuncAux tabl first
                                   table2 <- getDeclFunc table1 rest
                                   return (table2)

getDeclFuncAux :: Table -> Dcl -> State Count Table
getDeclFuncAux tabl (_,name) = do temp <- newTemp
                                  let tabl1 = extendTable tabl [(temp,name)]
                                  return (tabl1)

--get table with all temps to use for that block
getDecl :: Table -> Stm -> State Count Table
getDecl tabl (Block []) = return tabl
getDecl tabl (Block (stm:stms)) = do tabl1 <- getDeclAux tabl stm
                                     tabl2 <- getDecl tabl1 (Block stms)
                                     return (tabl2)

getDeclAux :: Table -> Stm -> State Count Table
getDeclAux tabl stm = case stm of
                       (VarOp (Declr t n)) -> do temp <- newTemp
                                                 let tabl1 = extendTable tabl [(temp,n)]
                                                 return (tabl1)
                       (VarOp (DeclAsgn tp x expr)) -> do temp <- newTemp
                                                          let tabl1 = extendTable tabl [(temp,x)]
                                                          return (tabl1)
                       (VarOp (Assign var expr)) -> case Map.lookup var tabl of
                                                      Just temp -> return tabl
                                                      Nothing -> error "Variable not defined"
                       (Block stm1) -> do tabl' <- getDecl tabl (Block stm1)
                                          return tabl'
                       stm -> return tabl

transStm :: Table -> Stm -> State Count [Instr]
transStm tabl (VarOp (Declr tp x)) = case Map.lookup x tabl of
                                        Just temp -> return []
                                        Nothing -> error "Variable not defined"

transStm tabl (VarOp (DeclAsgn tp x (Num n)))
  = case Map.lookup x tabl of
      Just temp -> do code1 <- transStm tabl (VarOp (Declr tp x))
                      return (code1 ++ [MOVEI temp n])
      Nothing -> error "variable not defined"

transStm tabl (VarOp (DeclAsgn tp x expr)) = case Map.lookup x tabl of
                                                Just temp -> do code1 <- transStm tabl (VarOp (Declr tp x))
                                                                tempexpr <- newTemp
                                                                code2 <- transExpr tabl expr tempexpr
                                                                return (code1++code2++[MOVE temp tempexpr])
                                                Nothing -> error "variable not defined"

transStm tabl (VarOp (Assign var (Num n)))
  = case Map.lookup var tabl of
      Just temp -> do t1 <- newTemp
                      return [MOVEI temp n]

transStm tabl (VarOp (Assign var expr))
  = case Map.lookup var tabl of
     Just temp -> do t1 <- newTemp
                     code1 <- transExpr tabl expr t1
                     return (code1++[MOVE temp t1])
     Nothing -> error "variable no defined"

transStm tabl (If cond stm)
  = do ltrue <- newLabel
       lfalse <- newLabel
       code0 <- transCond tabl cond ltrue lfalse
       table <- getDecl tabl (Block [stm])
       code1 <- transStm table stm
       return (code0 ++ [LABEL ltrue] ++ code1 ++ [LABEL lfalse])

transStm tabl (IfElse cond stm1 stm2)
   = do ltrue <- newLabel
        lfalse <- newLabel
        lend <- newLabel
        code0 <- transCond tabl cond ltrue lfalse
        table1 <- getDecl tabl (Block [stm1])
        code1 <- transStm table1 stm1
        table2 <- getDecl tabl (Block [stm2])
        code2 <- transStm table2 stm2
        return (code0 ++ [LABEL ltrue] ++ code1 ++ [JUMP lend, LABEL lfalse] ++ code2 ++ [LABEL lend])

transStm tabl (For decl cond op stm)
  = do ltrue <- newLabel
       lloop <- newLabel
       lend <- newLabel
       lcond <- newLabel
       (code0,tabl') <- transOpFor tabl decl
       code1 <- transCond tabl' cond ltrue lend
       code2 <- transOp tabl' op
       tabl1 <- getDecl tabl' (Block [stm])
       code3 <- transStm tabl1 stm
       return (code0 ++ [LABEL lloop] ++
               code1 ++ [LABEL ltrue] ++ code3 ++ code2 ++
               [JUMP lloop, LABEL lend])

transStm tabl (While cond stm)
  = do ltrue <- newLabel
       lloop <- newLabel
       lend <- newLabel
       code1 <- transCond tabl cond ltrue lend
       table <- getDecl tabl (Block [stm])
       code2 <- transStm table stm
       return ([LABEL lloop] ++ code1 ++
              [LABEL ltrue] ++ code2 ++
              [JUMP lloop, LABEL lend])

transStm tabl (Block stms)
  = do code1 <- transBlock tabl stms
       return (code1)

transStm tabl (Return expr)
  = do temp <-newTemp
       popTemp(1)
       code <- transExpr tabl expr temp
       return (code ++ [RETURN temp])

transStm tabl (PrintInt expr)
  = do temp <- newTemp
       popTemp(1)
       code <- transExpr tabl expr temp
       return (code ++ [PRINTINT temp])

transStm tabl (FuncCall func expr)
  = do (code1,temps) <- transExps tabl expr
       return (code1 ++ [CALL func (temps)])

transStm tabl (PrintStr (Str str))
  = do temp <- newTemp
       popTemp(1)
       let code = [MOVE temp str]
       return (code ++ [PRINTSTR temp])

transStm tabl (PrintStr expr)
  = do temp <- newTemp
       popTemp(1)
       code <- transExpr tabl expr temp
       return (code ++ [PRINTSTR temp])

transBlock:: Table -> [Stm] -> State Count [Instr]
transBlock tabl [] = return []
transBlock tabl (first:rest)
  = do code1 <- transStm tabl first
       code2 <- transBlock tabl rest
       return (code1 ++ code2)

transExpr:: Table -> Exp -> Temp -> State Count [Instr]
transExpr tabl (Num n) dest = return [MOVEI dest n]

transExpr tabl (Bconst True) dest = return [MOVEI dest 1]
transExpr tabl (Bconst False) dest = return [MOVEI dest 0]

transExpr tabl (Var x) dest
  = case Map.lookup x tabl of
      Just temp -> return [MOVE dest temp]
      Nothing -> error "Variable not defined"

transExpr tabl (Str str) dest
  = case Map.lookup str tabl of
      Just temp -> return [MOVE dest temp]
      Nothing -> error "variable not found"

transExpr tabl (Op op e1 e2) dest
  = do temp1 <- newTemp
       temp2 <- newTemp
       code1 <- transExpr tabl e1 temp1
       code2 <- transExpr tabl e2 temp2
       popTemp(2)
       return (code1 ++ code2 ++ [OP op dest temp1 temp2])

transExpr tabl ScanInt dest = return [SCANINT]


transExpr tabl (FuncCallExp func expr) dest
  = do (code1,temps) <- transExps tabl expr
       return (code1 ++ [CALL func (temps)])


transExps::Table -> [Exp] -> State Count ([Instr],[Temp])
transExps tabl [] = return ([],[])
transExps tabl (expr:exprs) = do temp1 <- newTemp
                                 code1 <- transExpr tabl expr temp1
                                 popTemp(1)
                                 (code2,temps) <- transExps tabl exprs
                                 return (code1 ++ code2,[temp1] ++ temps)


transCond :: Table -> ExpCompare -> Label -> Label -> State Count [Instr]
transCond tabl (Cond op e1 e2) labelt labelf = do temp1 <- newTemp
                                                  temp2 <- newTemp
                                                  code1 <- transExpr tabl e1 temp1
                                                  code2 <- transExpr tabl e2 temp2
                                                  popTemp(2)
                                                  return (code1++code2++[COND temp1 op temp2 labelt labelf])

transCond tabl (Not expr) labelt labelf = do temp1 <- transCond tabl expr labelf labelt
                                             return temp1

transCond tabl (And e1 e2) labelt labelf = do sclbl <- newLabel
                                              code1 <- transCond tabl e1 sclbl labelf
                                              code2 <- transCond tabl e2 labelt labelf
                                              return (code1++[LABEL sclbl]++code2)

transCond tabl (Or e1 e2) labelt labelf = do sclbl <- newLabel
                                             code1 <- transCond tabl e1 labelt sclbl
                                             code2 <- transCond tabl e2 labelt labelf
                                             return (code1++[LABEL sclbl]++code2)

transCond tabl (CBool True) labelt labelf = return [JUMP labelt]

transCond tabl (CBool False) labelt labelf = return [JUMP labelf]

transOpFor :: Table -> OpFor -> State Count ([Instr],Table)
transOpFor tabl (ForAssign name expr) = case Map.lookup name tabl of
                                          Just temp -> do temp <- newTemp
                                                          code0 <- transExpr tabl expr temp
                                                          return ((code0),tabl)
                                          Nothing -> error"variable not defined"

transOpFor tabl (ForDeclAsgn tp name expr) = do temp1 <- newTemp
                                                temp2 <- newTemp
                                                temp3 <- newTemp
                                                tabl' <- insertVar tabl name temp1
                                                code0 <- transExpr tabl' (Var name) temp2
                                                code1 <- transExpr tabl' expr temp3
                                                return ((code0 ++ code1),tabl')
transOpFor tabl (Empty) = return ([],tabl)

transOp :: Table -> Op -> State Count [Instr]
transOp tabl (PreIncr name)
  = case Map.lookup name tabl of
      Just temp -> return ([OPI Add temp temp 1])
      Nothing -> error "variable not defined"

transOp tabl (PostIncr name)
  = case Map.lookup name tabl of
      Just temp -> return ([OPI Add temp temp 1])
      Nothing -> error "variable not defined"

transOp tabl (PreDecr name)
  = case Map.lookup name tabl of
      Just temp -> return ([OPI Minus temp temp 1])
      Nothing -> error "variable not defined"

transOp tabl (PostDecr name)
  = case Map.lookup name tabl of
      Just temp -> return ([OPI Minus temp temp 1])
      Nothing -> error "variable not defined"
