import Data.Char
import Data.List

splitBy :: (a -> Bool) -> [a] -> [[a]]
splitBy _ [] = []
splitBy f list = first : splitBy f (dropWhile f rest) where
  (first, rest) = break f list

notThe :: String -> Maybe String
notThe "the" = Nothing
notThe x = Just x

aNothing :: Maybe String -> String
aNothing Nothing = "a"
aNothing (Just x) = x

replaceThe :: String -> String
replaceThe x =
  let words = splitBy (==' ') x
      tokens = map (aNothing . notThe) words
  in intercalate " " tokens
