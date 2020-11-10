module Main where

import ParserC0
import LexerC0

main :: IO ()
main = do
  passed <- getContents
  print (parserC0 $ alexScanTokens passed)
