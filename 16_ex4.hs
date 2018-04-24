isJust :: Maybe a -> Bool
isJust Nothing = False
isJust (Just _) = True

isNothing :: Maybe a -> Bool
isNothing = not . isJust

mayybee :: b -> (a -> b) -> Maybe a -> b
mayybee x _ Nothing = x
mayybee _ f (Just y) = f y

fromMaybe :: a -> Maybe a -> a
fromMaybe x Nothing = x
fromMaybe _ (Just y) = y

--listToMaybe :: [a] -> Maybe a

maybeToList :: Maybe a -> [a]
maybeToList = mayybee [] (\x -> [x])

catMaybes :: [Maybe a] -> [a]
catMaybes xs = [fromMaybe undefined x | x <- xs, isJust x]

flipMaybe :: [Maybe a] -> Maybe [a]
flipMaybe xs
  | any isNothing xs = Nothing
  | otherwise = Just $ map (fromMaybe undefined) xs