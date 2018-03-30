a = Just (+3) <*> Just 9  
b = pure (+3) <*> Just 10  
c = pure (+3) <*> Just 9  
d = Just (++"hahah") <*> Nothing    
e = Nothing <*> Just "woot"  
f = (++) <$> Just "johntra" <*> Just "volta"  -- NB

-- Allows application of a function to several functors
--class (Functor f) => Applicative f where  
--    pure :: a -> f a  
--    (<*>) :: f (a -> b) -> f a -> f b  

--instance Applicative Maybe where  
--    pure = Just  
--    Nothing <*> _ = Nothing  
--    (Just f) <*> something = fmap f something

-- Laws
-- pure f <*> x = fmap f x
-- pure id <*> v = v
-- pure (.) <*> u <*> v <*> w = u <*> (v <*> w)
-- pure f <*> pure x = pure (f x)
-- u <*> pure y = pure ($ y) <*> u