demor xs = foldr (\x y -> concat ["(",x,"+",y,")"]) "0" xs -- use  map show [1..5]
demol xs = foldl (\x y -> concat ["(",x,"+",y,")"]) "0" xs
-- see scanl (+) 0 [1..5]
-- see scanr (+) 0 [1..5]