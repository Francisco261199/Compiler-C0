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
           deriving Show

newTemp :: State Count Temp
newTemp = do (temps,labels )<-get
             put (temps+1,labels)
             return ("t"++show temps)

newLabel :: State Count Label
newLabel = do (temps,labels)<-get
              put (temps,labels+1)
              return ("L"++show labels)

insertVar :: Table -> String -> State Count Table
insertVar tabl x = do temp <- newTemp
                      return (Map.insert x temp tabl)


extendTable:: Table -> [(Temp,String)] -> Table
extendTable tbl [] = tbl
extendTable tbl ((temp,x):rest) = extendTable (Map.insert x temp tbl) rest

--extendTableIm:: Table -> [(Temp,Int)] -> Table
--extendTableIm tbl [] = tbl
--extendTableIm tbl ((temp,n):rest) = extendTableIm (Map.insert n temp tbl) rest

transStm :: Table -> Stm -> Temp -> State Count [Instr]
transStm tabl (VarOp (Declr tp x)) dest = case Map.lookup x tabl of
                                            Just temp -> return [MOVE temp x]
                                            Nothing -> return [MOVE dest x]

transStm tabl (VarOp (DeclAsgn tp x expr)) dest = do t1 <- newTemp
                                                     let tabl' = extendTable tabl [(dest,x)]
                                                     code1 <- transStm tabl' (VarOp (Declr tp x)) dest
                                                     code2 <- transExpr tabl' expr t1
                                                     return (code2++code1++[MOVE dest t1])
transStm tabl (VarOp (Assign var expr)) dest
  = do t1 <- newTemp
       code1 <- transExpr tabl expr t1
       return (code1++[MOVE dest t1])

transCond :: Table -> ExpCompare -> Label -> Label -> [Instr]
transCond tabl (Cond RelOp e1 e1) labelt labelf
 = case ExpCompare of
    RelOp exp exp -> do code


transStm tabl (If cond stm) dest
  = do ltrue <- newLabel
       lfalse <- newLabel
       code0 <- transCond tabl cond ltrue lfalse
       code1 <- transStm tabl stm
       return (code0 ++ [LABEL ltrue] ++
               code1 ++ [LABEL lfalse])

transStm tabl (IfElse cond stm1 stm2) dest
  = do ltrue <- newLabel
       lfalse <- newLabel
       lend <- newLabel
       code0 <- transCond tabl cond ltrue
       code1 <- transStm tabl stm1
       code2 <- transStm tabl stm2
       return (code0 ++ [LABEL ltrue] ++ code1 ++
               [JUMP lend, LABEL lfalse] ++ code2 ++ [LABEL lend])


transExpr:: Table -> Exp -> Temp -> State Count [Instr]
transExpr tabl (Num n) dest = return [MOVEI dest n]

transExpr tabl (Var x) dest = return [MOVE dest x]

transExpr tabl (Str str) dest
  = case Map.lookup str tabl of
      Just temp -> return [MOVE dest temp]
      Nothing -> error "invalid variable"

transExpr tabl (Op op e1 e2) dest
  = do temp1 <- newTemp
       temp2 <- newTemp
       code1 <- transExpr tabl e1 temp1
       code2 <- transExpr tabl e2 temp2
       return (code1 ++ code2 ++ [OP op dest temp1 temp2])

--transStm :: Table -> Stm -> State Count [Instr]
--transStm tabl (Assign var exp) = case Map.lookup var tabl of
--                                  Nothing -> error "undifined variable"
--                                  Just dest -> do temp <- newTemp
--                                                  code <- TransExpr tabl exp temp
--                                                  return (code ++ [MOVE dest temp])
--transStm tabl (If ExpCompare stm1) = do ltrue <- newLabel
--                                        lfalse <- newLabel
--                                        code0 <- transCond tabl ExpCompare ltrue lfalse
--                                        code1 <- transStm tabl stm1
--                                        return (code0 ++ [LABEL ltrue] ++
--                                                code1 ++ [LABEL lfalse])

--transStm tabl (IfElse cond stm1 stm2)
--  = do ltrue <- newLabel
--       lfalse <- newLabel
--       lend <- newLabel
--       code0 <- transCond tabl cond ltrue lfalse
--       code1 <- transStm tabl stm1
--       code2 <- transStm tabl stm2
--       return (code0 ++ [LABEL ltrue] ++ code1 ++
--              [JUMP lend, LABEL lfalse] ++ code2 ++ [LABEL lend])
