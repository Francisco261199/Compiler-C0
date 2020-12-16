module MCode where

import Interm
import Data.Map (Map)
import qualified Data.Map as Map
import Control.Monad.State
import ParserC0
import Data.Typeable



genMachineCode :: [FuncIr] -> String
genMachineCode [] = ""
genMachineCode (first:rest) = do code1 <- genMachineCodeAux first
                                 code2 <- genMachineCode rest
                                 return code1 ++ code2


genMachineCodeAux :: FuncIR -> String
genMachineCodeAux (FUNCIR name decl block) =do pre <- "sw $fp, -4($sp)\n"++
                                                      "sw $ra, -8($sp)\n"++
                                                      "la $fp, 0($sp)\n"++
                                                      "la $sp, -8($sp)\n"
                                               args <- genArg decl
                                               code <- genFuncCode block
                                               func <- name ++ ":\n" ++ pre ++ args ++ code
                                               return func

genArg :: [Temps] -> String
genArg xs = do


genFuncCode :: [Instr] -> String
genFuncCode [] = ""
genFuncCode (ins:inss) =do code1 <- genFuncCodeAux ins
                           code2 <- genFuncCode inss
                           return code1 ++ code2

genFuncCodeAux :: Instr -> String
genFuncCodeAux (MOVE s1 s2) = "move " ++ "$"++s1++", $" ++ s2 ++ "\n"

genFuncCodeAux (MOVEI s1 x) = "li " ++"$"++s1++", "++x++"\n"

genFuncCodeAux (OP op s0 s1 s2) = case op of
                                    Add -> "add " ++ "$" ++ s0 ++ ", $" ++ s1 ++ ", $" ++ s2 ++ "\n"
                                    Times -> "mult " ++ "$" ++ s0 ++ ", $" ++ s1 ++ ", $" ++ s2 ++ "\n"
                                    Minus -> "sub " ++ "$" ++ s0 ++ ", $" ++ s1 ++ ", $" ++ s2 ++ "\n"
                                    Div -> "div " ++ "$" ++ s1 ++ ", $" ++ s2 ++ "\n" ++ "mflo " ++ "$" ++ s0 ++ "\n"
                                    Mod ->"div " ++ "$" ++ s1 ++ ", $" ++ s2 ++ "\n" ++ "mfhi " ++ "$" ++ s0 ++ "\n"
                                    otherwise ->

genFuncCodeAux (OPI Add s0 s1 x) = "addi " ++ "$" ++ s0 ++ ", $" ++s1  ++ ", " ++ x ++"\n"

genFuncCodeAux (Cond c1 op c2 ltrue lfalse) = case op of
                                                LessThan -> "blt " ++ "$" ++ c1 ++ ", $" ++ c2 ++" ," ++ labelt ++"\n" ++ "j " ++ labelf ++"\n"
                                                GreaterThan ->
