import Data.Char

cap :: [Char] -> [Char]
cap xs = map toUpper xs

rev :: [Char] -> [Char]
rev xs = reverse xs

composed :: [Char] -> [Char]
composed = rev . cap

fmapped :: [Char] -> [Char]
fmapped = rev <$> cap

tupled :: [Char] -> ([Char], [Char])
tupled = do
  r <- rev
  c <- cap
  return (r, c)

tupled2 :: [Char] -> ([Char], [Char])
tupled2 =
  rev >>= \r ->
  cap >>= \c ->
  return (r, c)