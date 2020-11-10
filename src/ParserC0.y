{
module ParserC0 where
import LexerC0
}

%name parserC0
%tokentype { Token }
%error{ parseError }

%token

num { NUM_TOK $$ }
var { VAR_TOK $$ }

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

--relational opr
"=="{ EQUAL_TOK }
"!="{ NEQUAL_TOK }
"<" { LTHEN_TOK }
">" { GTHEN_TOK }
">="{ GTOE_TOK }
"<="{ LTOE_TOK }

--If
if { IF_TOK }
then { THEN_TOK }
else { ELSE_TOK }
--while
while { WHILE_TOK }

--------------------------

--Associative/Precedence
%nonassoc "<" ">" "==" "!=" ">=" "<="
%left '+' '-'
%left '*' '/' '%'

%%

--calc operations
Exp : num { Num $1 }
    | Exp '+' Exp       { Add $1 $3 }
    | Exp '-' Exp       { Sub $1 $3 }
    | Exp '*' Exp       { Mult $1 $3 }
    | Exp '/' Exp       { Div $1 $3 }
    | Exp '%' Exp       { Mod $1 $3 }
    | Exp "<="Exp       { LessOrEqual $1 $3 }
    | Exp ">="Exp       { GreaterOrEqual $1 $3 }
    | Exp "<" Exp       { LessThan $1 $3 }
    | Exp ">" Exp       { GreaterThan $1 $3 }
    | '(' Exp ')' { $2 }

Stm : var               { Var $1 }
    | var '=' num       { Assign $1 $3 }
    | if Exp Stm Stm    { If $2 $3 $4 }
    | else Stm          { Else $2 }
    | while Exp Stm     { While $2 $3 }

{

data Type = Tint
          | Tbool
          deriving(Show, Eq)

data Stm = If Exp Stm Stm
         | Var String
         | Assign String Int
         | Else Stm
         | While Exp Stm
         | Block [Stm]
         | Funct [Decl] [Stm]
         deriving Show

data Exp = Num Int
         | Add Exp Exp
         | Sub Exp Exp
         | Mult Exp Exp
         | Div Exp Exp
         | Mod Exp Exp
         | LessThan Exp Exp
         | GreaterThan Exp Exp
         | LessOrEqual Exp Exp
         | GreaterOrEqual Exp Exp
         deriving Show

type Decl = (String, Type)

parseError :: [Token] -> a
parseError toks = error "parse error"
}
