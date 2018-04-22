module Cipher where

import Data.List
import Data.Maybe

cipher :: String -> Int -> String -> String
cipher alphabet n xs = -- can use any string as alphabet
  let size = length alphabet
      ord x = fromMaybe undefined $ findIndex (==x) alphabet
      chr x = alphabet !! x
      shift x = x `mod` size
  in map (chr . shift . (+n) . ord) xs

decipher alphabet n = cipher alphabet (-n)