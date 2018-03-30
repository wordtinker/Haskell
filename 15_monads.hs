-- class Monad m where  
--    return :: a -> m a    
--    (>>=) :: m a -> (a -> m b) -> m b    
--    (>>) :: m a -> m b -> m b  
--    x >> y = x >>= \_ -> y  
--    fail :: String -> m a  
--    fail msg = error msg  
-- If we have a fancy value and a function that takes
-- a normal value but returns a fancy value, how do we feed
-- that fancy value into the function?
-- Laws
-- return x >>= f is the same damn thing as f x
-- m >>= return is no different than just m
-- Doing (m >>= f) >>= g is just like doing m >>= (\x -> f x >>= g)

z = Just 9 >>= (\x -> Just (x > 8))
y :: Maybe Bool  
y = do   
    x <- Just 9  
    Just (x > 8)  
