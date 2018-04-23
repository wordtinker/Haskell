myAny :: (a -> Bool) -> [a] -> Bool
myAny f [] = False
myAny f xs = or $ map f xs

myReverse :: [a] -> [a]
myReverse [] = []
myReverse (x:xs) = myReverse xs ++ [x]

squish :: [[a]] -> [a]
squish [[]] = []
squish [x] = x
squish (x:xs) = x ++ squish xs

squishMap :: (a -> [b]) -> [a] -> [b]
squishMap f [] = []
squishMap f (x:xs) = f x ++ squishMap f xs

squishAgain :: [[a]] -> [a]
squishAgain = squishMap id

myMaximumBy :: (a -> a -> Ordering) -> [a] -> a
myMaximumBy f [] = error "Empty list"
myMaximumBy f [x] = x
myMaximumBy f (x:y:xs)
  | f x y == GT = myMaximumBy f (x:xs)
  | otherwise = myMaximumBy f (y:xs)