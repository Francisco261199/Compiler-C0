{
module ParserC0 where
import LexerC0
}

%name parserC0
%tokentype { Token }
%error{ parseError }


%token

num     { NUM_TOK $$ }
var     { VAR_TOK $$ }
true    { TRUE_TOK $$ }
false   { FALSE_TOK $$ }
return  { RETURN_TOK }

--Types
int  { INT_DEF_TOK }
bool { BOOL_DEF_TOK }

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


-- I/0

printint { PRINTINT_TOK  }
scanint { SCANINT_TOK  }

--------------------------

--Associative/Precedence
%nonassoc "<" ">" "==" "!=" ">=" "<=" "&&" "||" "!"
%left '+' '-'
%left '*' '/' '%'
%left

%%

Func : Type var '(' Decl ')' '{' Stmts ReturnStm ';' '}' { Funct $1 $2 $4 $7 $8 }

ReturnStm : return var    { ReturnVar $2 }
          | return num    { ReturnInt $2 }
          | return true   { ReturnBool True }
          | return false  { ReturnBool False }
          | return        { ReturnEmpty }



Stm : var '=' Exp ';'                     { Assign $1 $3 }
    | Type var ';'                        { Declr $1 $2 }
    | Type var '=' Exp ';'                { DeclAsgn $1 $2 $4 } -- declaration and assignment
    | if '(' ExpCompare ')' Stm else Stm  { If $3 $5 $7 }
    | if '(' ExpCompare ')' Stm           { If $3 $5 Skip }
    | while '(' ExpCompare ')' Stm        { While $3 $5 }
    | '{' Stmts '}'                       { Block $2 }
    | ReturnStm ';'                       { Return $1 }
    | var '(' Decl ')'';'                 { FuncCall $1 $3 }
    | printint '(' var ')' ';'                { PrintInt $3 }
    | scanint '(' var ')' ';'                { ScanInt $3   }

Exp : num { Num $1 }
    | var { Var $1 }
    | '(' Exp ')'       { $2 }
    | Exp '+' Exp       { Add $1 $3 }
    | Exp '-' Exp       { Sub $1 $3 }
    | Exp '*' Exp       { Mult $1 $3 }
    | Exp '/' Exp       { Div $1 $3 }
    | Exp '%' Exp       { Mod $1 $3 }

ExpCompare : Exp "==" Exp                     { IsEqual $1 $3 }
           | Exp "!=" Exp                     { IsNEqual $1 $3 }
           | Exp "<="Exp                      { LessOrEqual $1 $3 }
           | Exp ">="Exp                      { GreaterOrEqual $1 $3 }
           | Exp "<" Exp                      { LessThan $1 $3 }
           | Exp ">" Exp                      { GreaterThan $1 $3 }
           | ExpCompare  "&&" ExpCompare      { AND $1 $3 }
           | ExpCompare "||" ExpCompare       { OR $1 $3 }
           | '!' '(' ExpCompare ')'           { NOT $3 }
           | true                             { Bconst True }
           | false                            { Bconst False }

Stmts :{- empty-} { [] }
      | Stmts Stm { $1 ++ [$2] }

Type : int   { Tint }
     | bool  { Tbool }

Decl :{-Empty -}         { [] }
     | Type var          { [($1,$2)] }
     | Decl ',' Type var { $1 ++ [($3,$4)] }

{
type Dcl = (Type,String)

data Type = Tint | Tbool deriving Show

data Stmts = Stm
           deriving Show

data Decl = Dcl
          deriving Show

data Func = Funct Type String [Dcl] [Stm] ReturnStm
        --  | FuncNoDecl Type String [Stm] ReturnStm
          deriving Show

data ReturnStm = ReturnVar String
               | ReturnInt Int
               | ReturnBool Bool
               | ReturnEmpty
               deriving Show

data Stm = Assign String Exp
         | Declr Type String
         | DeclAsgn Type String Exp
         | If ExpCompare Stm Stm
         | Else Stm
         | While ExpCompare Stm
        -- | For Assign
         | Block [Stm]
         | Return ReturnStm
         | FuncCall String [Dcl]
         | PrintInt String
         | ScanInt String
         | Skip
         deriving Show

data Exp = Num Int
         | Var String
         | Add Exp Exp
         | Sub Exp Exp
         | Mult Exp Exp
         | Div Exp Exp
         | Mod Exp Exp
         deriving Show

data ExpCompare = LessThan Exp Exp
                | GreaterThan Exp Exp
                | LessOrEqual Exp Exp
                | GreaterOrEqual Exp Exp
                | IsEqual Exp Exp
                | IsNEqual Exp Exp
                | Bconst Bool
                | AND ExpCompare ExpCompare
                | OR ExpCompare ExpCompare
                | NOT ExpCompare
                deriving Show

parseError :: [Token] -> a
parseError toks = error "parse error"
}
