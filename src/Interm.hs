module Interm where

import Data.Map (Map)
import Control.Monad.State
--import ParserC0

type Temp = String
type Label = String
type Table = Map String String
type Count = (Int,Int)

newTemp :: State Count Temp
newTemp = do (temps,labels )<-get
             put (temps+1,labels)
             return ("t"++show temps)

newLabel :: State Count Label
newLabel = do (temps,labels)<-get
              put (temps,labels+1)
              return ("L"++show labels)

data Instr = MOVE Temp Temp
           | MOVEI Temp Int
           | OP BinOp Temp Temp Temp
           | OPI BinOp Temp Temp Int
           | LABEL Label
           | JUMP Label
           | COND Temp RelOp Temp Label Label
           deriving Show



transExpr :: Table -> Expr -> Temp -> State Count [Instr]
transExpr tabl (Var x) dest = case Map.lookup x tabl of
                                Just temp -> return [Move dest temp]
                                Nothing -> error "invalid variable"

transExpr tabl (Num n) dest = return [MOVEI dest n]

transExpr tabl (Op op e1 e2) dest
  = do temp1 <- newTemp
       temp2 <- newTemp
       code1 <- transExpr tabl e1 temp1
       code2 <- transExpr tabl e2 temp2
       return (code1 ++ code2 ++ [Op op dest temp1 temp2])
