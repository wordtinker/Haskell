myIterate :: (a -> a) -> a -> [a]
myIterate f x = x : myIterate f (f x)

myUnfoldr :: (b -> Maybe (a, b)) -> b -> [a]
myUnfoldr f x = ufold (f x) where
 ufold Nothing = []
 ufold (Just (i, j)) = i : myUnfoldr f j

betterIterate = unfoldr (\x -> Just (x, f x))
