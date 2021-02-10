{
module ParserC0 where
import LexerC0
}

%name parserC0
%tokentype { Token }
%error{ parseError }


%token

num      { NUM_TOK $$ }
str      { STRING_TOK $$ }
id       { VAR_TOK $$ }
true     { TRUE_TOK $$ }
false    { FALSE_TOK $$ }
return   { RETURN_TOK }

--Types
int  { INT_DEF_TOK }
bool { BOOL_DEF_TOK }
string { STRING_DEF_TOK }

--PARENTESIS/BRACKETS
'(' { LPAREN_TOK }
')' { RPAREN_TOK }
'=' { ASSIGN_TOK }
'{' { LBRACE_TOK }
'}' { RBRACE_TOK }

--Binnary OPR
'+' { PLUS_TOK }
'-' { MINUS_TOK }
'*' { MULT_TOK }
'/' { DIV_TOK }
'%' { MOD_TOK }
';' { SEMICOLON_TOK }
',' { COLON_TOK }
"++"{ INCR_TOK }
"--"{ DECR_TOK }

--relational opr
"=="{ EQUAL_TOK }
"!="{ NEQUAL_TOK }
"<" { LTHEN_TOK }
">" { GTHEN_TOK }
">="{ GTOE_TOK }
"<="{ LTOE_TOK }

--Logical Opr
"&&" { AND_TOK }
"||" { OR_TOK }
'!'  { NOT_TOK }

--If
if { IF_TOK }
else { ELSE_TOK }

--cycles
while { WHILE_TOK }
for { FOR_TOK }
-- I/0

print_int { PRINTINT_TOK }
scan_int  { SCANINT_TOK }
print_str { PRINTSTR_TOK }
--------------------------

--Associative/Precedence
%left "<" ">" "==" "!=" ">=" "<=" "&&" "||"
%left '+' '-'
%left '*' '/' '%'
%right '!' "++" "--"
%%

Funcs : Func { [$1] }
      | Funcs Func { $1 ++ [$2] }

Func : Type id '(' Decl ')' '{' Stmts '}' { Funct $1 $2 $4 $7 }

Stm : OpStm                                   { VarOp $1 }
    | if '(' ExpCompare ')' Stm else Stm      { IfElse $3 $5 $7 }
    | if '(' ExpCompare ')' Stm               { If $3 $5 }
    | for '(' OpFor ExpCompare ';' Op ')' Stm { For $3 $4 $6 $8 }
    | while '(' ExpCompare ')' Stm            { While $3 $5 }
    | '{' Stmts '}'                           { Block $2 }
    | return Exp ';'                          { Return $2 }
    | id '(' Exps ')' ';'                     { FuncCall $1 $3 }
    | print_int '(' Exp ')' ';'               { PrintInt $3 }
    | print_str '(' Exp ')' ';'               { PrintStr $3 }

Exp : num { Num $1 }
    | str { Str $1 }
    | id  { Var $1 }
    | scan_int '(' ')' ';' { ScanInt }
    | '(' Exp ')'          { $2 }
    | Exp '+' Exp          { Op Add $1 $3 }
    | Exp '-' Exp          { Op Minus $1 $3 }
    | Exp '*' Exp          { Op Times $1 $3 }
    | Exp '/' Exp          { Op Div $1 $3 }
    | Exp '%' Exp          { Op Mod $1 $3 }
    | id '(' Exps ')'      { FuncCallExp $1 $3 }
    | true                 { Bconst True }
    | false                { Bconst False }

Op : "++" id           { PreIncr $2 }
   | id "++"           { PostIncr $1 }
   | "--" id           { PreDecr $2 }
   | id "--"           { PostDecr $1 }
   | id '=' Exp        { OpAssign $1 $3 }

OpStm : id '=' Exp ';'                      { Assign $1 $3 }
      | Type id ';'                         { Declr $1 $2 }
      | Type id '=' Exp ';'                 { DeclAsgn $1 $2 $4 } -- declaration and assignment

OpFor : ';'                                 { Empty }
      | id '=' Exp ';'                      { ForAssign $1 $3 }
      | Type id '=' Exp ';'                 { ForDeclAsgn $1 $2 $4 } -- declaration and assignment

ExpCompare : Exp "==" Exp                     { Cond IsEqual $1 $3 }
           | Exp "!=" Exp                     { Cond IsNEqual $1 $3 }
           | Exp "<="Exp                      { Cond LessOrEqual $1 $3 }
           | Exp ">="Exp                      { Cond GreaterOrEqual $1 $3 }
           | Exp "<" Exp                      { Cond LessThan $1 $3 }
           | Exp ">" Exp                      { Cond GreaterThan $1 $3 }
           | ExpCompare  "&&" ExpCompare      { And $1 $3 }
           | ExpCompare "||" ExpCompare       { Or $1 $3 }
           | '!' ExpCompare                   { Not $2 }
           | id '(' Exps ')'                  { FuncCallExpC $1 $3 }
           | true                             { CBool True         }
           | false                            { CBool False        }

Stmts :{- empty-} { [] }
      | Stmts Stm { $1 ++ [$2] }

Type : int    { Tint }
     | bool   { Tbool }
     | string { Tstring }

Decl :{-empty -}         { [] }
     | Type id          { [($1,$2)] }
     | Decl ',' Type id { $1 ++ [($3,$4)] }

Exps : {- Empty -}  { [] }
     | Exp          { [$1] }
     | Exps ',' Exp { $1 ++ [$3] }


{
type Dcl = (Type,String)

data Type = Tint | Tbool | Tstring deriving Show

data Func = Funct Type String [Dcl] [Stm]
          deriving Show

data Op = PreIncr String
        | PostIncr String
        | PreDecr String
        | PostDecr String
        | OpAssign String Exp
        deriving Show

data BinOp = Add | Minus | Times | Div | Mod deriving Show

data RelOp = LessThan | GreaterThan | LessOrEqual | GreaterOrEqual | IsEqual | IsNEqual
            deriving Show


data OpStm = Assign String Exp
           | Declr Type String
           | DeclAsgn Type String Exp
           deriving Show

data OpFor = ForAssign String Exp
           | ForDeclAsgn Type String Exp
           | Empty
           deriving Show

data Stm = If ExpCompare Stm
         | IfElse ExpCompare Stm Stm
         | VarOp OpStm
         | While ExpCompare Stm
         | FuncCall String [Exp]
         | PrintInt Exp
         | PrintStr Exp
         | For OpFor ExpCompare Op Stm
         | Block [Stm]
         | Return Exp
         deriving Show

data Exp = Num Int
         | Str String
         | Var String
         | Bconst Bool
         | Op BinOp Exp Exp
         | ScanInt
         | FuncCallExp String [Exp]
         deriving Show

data ExpCompare = Cond RelOp Exp Exp
                | And ExpCompare ExpCompare
                | Or ExpCompare ExpCompare
                | Not ExpCompare
                | FuncCallExpC String [Exp]
                | CBool Bool
                deriving Show

parseError :: [Token] -> a
parseError toks = error "parse error"
}
