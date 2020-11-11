{
module ParserC0 where
import LexerC0
}

%name parserC0
%tokentype { Token }
%error{ parseError }


%token

num   { NUM_TOK $$ }
var   { VAR_TOK $$ }
True  { BOOL_TOK $$ }
False { BOOL_TOK $$ }

--Types
int  { INT_TYPE_TOK }
bool { BOOL_TYPE_TOK }

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

Stm : var '=' Exp ';'           { Assign $1 $3 }
    | if Exp Stm Stm            { If $2 $3 $4 }
    | if Exp Stm                { If $2 $3 Skip }
    | else Stm                  { Else $2 }
    | while Exp Stm             { While $2 $3 }
    | '{' Stm1 '}'              { Block $2 }

Stm1 : Stm { [$1] }
     | Stm1 Stm { $1 ++ [$2] }

Exp : num { Num $1 }
    | var { Var $1 }
    | Exp '+' Exp       { Add $1 $3 }
    | Exp '-' Exp       { Sub $1 $3 }
    | Exp '*' Exp       { Mult $1 $3 }
    | Exp '/' Exp       { Div $1 $3 }
    | Exp '%' Exp       { Mod $1 $3 }
    | Exp "==" Exp      { Equal $1 $3 }
    | Exp "!=" Exp      { NotEqual $1 $3 }
    | Exp "<="Exp       { LessOrEqual $1 $3 }
    | Exp ">="Exp       { GreaterOrEqual $1 $3 }
    | Exp "<" Exp       { LessThan $1 $3 }
    | Exp ">" Exp       { GreaterThan $1 $3 }
    | '(' Exp ')' { $2 }

--Type : int   { Tint }
--     | bool  { Tbool }

{

data Type = Tint | Tbool deriving Show

data Stm1 = Stm deriving Show

data Stm = Assign String Exp
         | If Exp Stm Stm
         | Else Stm
         | While Exp Stm
         | Block [Stm]
         | Funct [Decl] [Stm]
         | Skip
         deriving Show

data Exp = Num Int
         | Var String
         | Add Exp Exp
         | Sub Exp Exp
         | Mult Exp Exp
         | Div Exp Exp
         | Mod Exp Exp
         | LessThan Exp Exp
         | GreaterThan Exp Exp
         | LessOrEqual Exp Exp
         | GreaterOrEqual Exp Exp
         | Equal Exp Exp
         | NotEqual Exp Exp
         deriving Show

type Decl = (String, Type)

parseError :: [Token] -> a
parseError toks = error "parse error"
}
