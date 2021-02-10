module MCode where

import Interm
import ParserC0
import Data.Typeable

printCode ::[FuncIR] -> IO ()
printCode func = let code = genMachineCode func
                 in putStrLn code

genMachineCode :: [FuncIR] -> String
genMachineCode [] = ""
genMachineCode (first:rest) = let code1 = genMachineCodeAux first
                                  code2 = genMachineCode rest
                              in (code1 ++ code2)




genMachineCodeAux :: FuncIR ->String
genMachineCodeAux (FUNCIR name decl block) = let l = (length decl*(-4))
                                                 pre = "\tsw $fp, -4($sp)\n"++
                                                      "\tsw $ra, -8($sp)\n"++
                                                      "\tla $fp, 0($sp)\n"++
                                                      "\tla $sp," ++ show l ++ "($sp)\n"
                                                 args = genArg decl 0
                                                 code = genFuncCode block
                                                 post =  "\tla $sp, 0($fp)\n"++
                                                         "\tlw $ra,-8($sp)\n"++
                                                         "\tlw $fp, -4($sp)\n" ++
                                                         "\tjr $ra\n"
                                              in name ++ ":\n" ++ pre ++ args ++ "\n" ++ code ++ "\n" ++ post
                                                 


genArg :: [Temp] -> Int -> String
genArg [] _ = ""
genArg (x:xs) n = let arg = "\tlw $" ++ x ++ ", " ++ show n ++ "($fp)\n"
                      args = genArg xs (n+4)
                  in arg ++ args


genFuncCode :: [Instr] -> String
genFuncCode [] = ""
genFuncCode (ins:inss) =let code1 = genFuncCodeAux ins
                            code2 = genFuncCode inss
                         in (code1 ++ code2)                           

genFuncCodeAux :: Instr -> String
genFuncCodeAux (MOVE s1 s2) = "\tmove $"++s1++", $" ++ s2 ++ "\n"

genFuncCodeAux (MOVEI s1 x) = "\tli $"++s1++", "++ show x++"\n"

genFuncCodeAux (OP op s0 s1 s2) = case op of
                                    Add -> "\tadd $" ++ s0 ++ ", $" ++ s1 ++ ", $" ++ s2 ++ "\n"
                                    Times -> "\tmult $" ++ s0 ++ ", $" ++ s1 ++ ", $" ++ s2 ++ "\n"
                                    Minus -> "\tsub $" ++ s0 ++ ", $" ++ s1 ++ ", $" ++ s2 ++ "\n"
                                    Div -> "\tdiv $" ++ s1 ++ ", $" ++ s2 ++ "\n" ++ "\tmflo " ++ "$" ++ s0 ++ "\n"
                                    Mod ->"\tdiv $" ++ s1 ++ ", $" ++ s2 ++ "\n" ++ "\tmfhi " ++ "$" ++ s0 ++ "\n"
                                    
genFuncCodeAux (OPI Add s0 s1 x) = "\taddi $" ++ s0 ++ ", $" ++s1  ++ ", " ++ show x ++"\n"

genFuncCodeAux (PRINTINT t ) = "\tmove $v0" ++ ", $" ++ t ++ "\n\tlw $a0, 0($sp)\n\tsyscall\n\tjr $ra\n"

genFuncCodeAux (COND c1 op c2 labelt labelf) = case op of
                                                LessThan -> "\tblt $" ++ c1 ++ ", $" ++ c2 ++" ," ++ labelt ++"\n\tj " 
                                                                ++ labelf ++"\n"
                                                GreaterThan -> "\tblt $" ++ c1 ++ ", $" ++ c2 ++ " ," ++ labelf ++ "\n\tj " 
                                                                ++ labelt ++ "\n"
                                                IsEqual -> "\tbne $" ++ c1 ++ ", $" ++ c2 ++ " ," ++ labelf ++ "\n\tj " 
                                                                ++ labelt ++ "\n"
                                                IsNEqual -> "\tbeq $" ++ c1 ++ ", $" ++ c2 ++ " ," ++ labelf ++ "\n\tj "
                                                                ++ labelt ++ "\n"
                                                LessOrEqual -> "\tslt $s0" ++ ", $" ++ c1 ++ ", $" ++ c2 ++ "\n" ++ "\tbeq $s0" 
                                                                ++ ", $0, " ++ labelt ++"\n" ++ "\tj " ++ labelf ++ "\n"
                                                GreaterOrEqual -> "\tslt $s0" ++ ", $" ++ c2 ++ ", $" ++ c1 ++ "\n" ++ "\tbeq $0"
                                                                ++ ", $0, " ++ labelt ++"\n" ++ "\tj "++ labelf  ++ "\n"

genFuncCodeAux(LABEL l) = l ++ ":\n"

genFuncCodeAux(JUMP l) = "\t j " ++ l ++ "\n"

genFuncCodeAux(RETURN f) = "\tmove $v0, $" ++ f ++ "\n" 

