module Main where

import ParserC0
import LexerC0
--import Interm
--import Data.Map (Map)
--import qualified Data.Map as Map
--import Control.Monad.State

main :: IO ()
main = do
  passed <- getContents
  print (parserC0 $ alexScanTokens passed)
  --let func = parserC0 (alexScanTokens passed)
  --let code = evalState (transStm Map.empty func) (0,0)
  --print passed
