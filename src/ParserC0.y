{
module ParserC0 where
import LexerC0
}

%name parserC0
%tokentype { Token }
%error{ parseError }


%token

num     { NUM_TOK $$ }
str     { STRING_TOK $$ }
id      { VAR_TOK $$ }
true    { TRUE_TOK $$ }
false   { FALSE_TOK $$ }
return  { RETURN_TOK }
main    { MAIN_TOK }

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

--while
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

Func : Type id '(' Decl ')' '{' Stmts ReturnStm ';' '}' { Funct $1 $2 $4 $7 $8 }
     | Type main '(' ')' '{' Stmts '}'                  { FuncMain $1 $6 }

ReturnStm : return Exps   { ReturnExp $2 }
          | return true   { ReturnBool True }
          | return false  { ReturnBool False }


Stm : Op1                                    { VarOp1 $1 }
    | if '(' ExpCompare ')' Stm else Stm     { If $3 $5 Else $7 }
    | if '(' ExpCompare ')' Stm              { If $3 $5 Skip Skip }
    | for '(' Op1 ExpCompare ';' Op ')' Stm  { For $3 $4 $6 $8 }
    | while '(' ExpCompare ')' Stm           { While $3 $5 }
    | '{' Stmts '}'                          { Block $2 }
    | ReturnStm ';'                          { Return $1 }
    | id '(' Exps ')' ';'                    { FuncCall $1 $3 }
    | print_int '(' Exp ')' ';'              { PrintInt $3 }
    | print_str '(' str ')' ';'              { PrintStr $3 }

Exp : num { Num $1 }
    | str { Str $1 }
    | id  { Var $1 }
    | '(' Exp ')'       { $2 }
    | Exp '+' Exp       { Add $1 $3 }
    | Exp '-' Exp       { Sub $1 $3 }
    | Exp '*' Exp       { Mult $1 $3 }
    | Exp '/' Exp       { Div $1 $3 }
    | Exp '%' Exp       { Mod $1 $3 }
    | id '(' Exps ')'   { FuncCallExp $1 $3 }
    | Op                { VarOp $1 }

Op : "++" id           { PreIncr $2 }
   | id "++"           { PostIncr $1 }
   | "--" id           { PreDecr $2 }
   | id "--"           { PostDecr $1 }

Op1 : id '=' Exp ';'                      { Assign $1 $3 }
    | id '=' scan_int '(' ')' ';'         { ScanInt $1 }
    | Type id ';'                         { Declr $1 $2 }
    | Type id '=' Exp ';'                 { DeclAsgn $1 $2 $4 } -- declaration and assignment

ExpCompare : Exp "==" Exp                     { IsEqual $1 $3 }
           | Exp "!=" Exp                     { IsNEqual $1 $3 }
           | Exp "<="Exp                      { LessOrEqual $1 $3 }
           | Exp ">="Exp                      { GreaterOrEqual $1 $3 }
           | Exp "<" Exp                      { LessThan $1 $3 }
           | Exp ">" Exp                      { GreaterThan $1 $3 }
           | ExpCompare  "&&" ExpCompare      { And $1 $3 }
           | ExpCompare "||" ExpCompare       { Or $1 $3 }
           | '!' '(' ExpCompare ')'           { Not $3 }
           | true                             { Bconst True }
           | false                            { Bconst False }
           | id '(' Exps ')'                  { FuncCallExpC $1 $3 }

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

data Func = Funct Type String [Dcl] [Stm] ReturnStm
          | FuncMain Type [Stm]
          deriving Show

data ReturnStm = ReturnExp [Exp]
               | ReturnBool Bool
               deriving Show

data Op = PreIncr String
        | PostIncr String
        | PreDecr String
        | PostDecr String
        deriving Show

data Stm = If ExpCompare Stm Stm Stm
         | Else
         | VarOp1 AssnStm
         | While ExpCompare Stm
         | FuncCall String [Exp]
         | PrintInt Exp
         | PrintStr String
         | For AssnStm ExpCompare Op Stm
         | Block [Stm]
         | Return ReturnStm
         | Skip
         deriving Show

data AssnStm = Assign String Exp
             | Declr Type String
             | DeclAsgn Type String Exp
             | ScanInt String
             deriving Show

data Exp = Num Int
         | Str String
         | Var String
         | Add Exp Exp
         | Sub Exp Exp
         | Mult Exp Exp
         | Div Exp Exp
         | Mod Exp Exp
         | FuncCallExp String [Exp]
         | VarOp Op
         deriving Show

data ExpCompare = LessThan Exp Exp
                | GreaterThan Exp Exp
                | LessOrEqual Exp Exp
                | GreaterOrEqual Exp Exp
                | IsEqual Exp Exp
                | IsNEqual Exp Exp
                | Bconst Bool
                | And ExpCompare ExpCompare
                | Or ExpCompare ExpCompare
                | Not ExpCompare
                | FuncCallExpC String [Exp]
                deriving Show

parseError :: [Token] -> a
parseError toks = error "parse error"
}
