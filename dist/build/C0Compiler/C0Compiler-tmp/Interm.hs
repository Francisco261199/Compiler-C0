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

transStm :: Table -> Stm -> State Count [Instr]
transStm tabl (VarOp (Declr tp x)) = case Map.lookup x tabl of
                                        Just temp -> error "variable already defined"
                                        Nothing -> do temp1 <- newTemp
                                                      let tabl' = extendTable tabl [(temp1,x)]
                                                       in case Map.lookup x tabl' of
                                                          Nothing -> error "asdasd"
                                                          Just temp2 -> return [MOVE temp2 x]

--transStm tabl (VarOp (DeclAsgn tp x expr)) = do t1 <- newTemp
--                                                code1 <- transStm tabl (VarOp (Declr tp x))
--                                                code2 <- transExpr tabl expr t1
--                                                case Map.lookup x
--                                                return (code1++code2++[MOVE t2 t1])

--transStm tabl (VarOp ( _ x)) dest = case Map.lookup x tabl of
--                                          Just temp -> return [MOVE dest temp]
--                                          Nothing -> error "invalid variable"

transExpr:: Table -> Exp -> Temp -> State Count [Instr]
transExpr tabl (Num n) dest = return [MOVEI dest n]

transExpr tabl (Var x) dest
  = case Map.lookup x tabl of
      Just temp -> return [MOVE dest temp]
      Nothing -> error "invalid variable"

transExpr tabl (Str str) dest
  = case Map.lookup str tabl of
      Just temp -> return [MOVE dest temp]
      Nothing -> error "invalid variable"
-- transExpr tabl (BinOp e1 e2) dest
--  = do temp1 <- newTemp
--       temp2 <- newTemp
--       code1 <- transExpr tabl e1 temp1
--       code2 <- transExpr tabl e2 temp2
--       return (code1 ++ code2 ++ [Op op dest temp1 temp2])


--transCond :: Table -> ExpCompare -> Label -> Label -> [Instr]
--transCond tabl (ExpCompare) labelt labelf
--  = case ExpCompare of
--    RelOp exp exp -> do code


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
