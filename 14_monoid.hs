

-- The function takes two parameters.
-- The parameters and the returned value have the same type.
-- There exists such a value that doesn't change other values
-- when used with the binary function.
--class Monoid m where  
--    mempty :: m  
--    mappend :: m -> m -> m  
--    mconcat :: [m] -> m  
--    mconcat = foldr mappend mempty 
-- Laws
-- mempty `mappend` x = x
-- x `mappend` mempty = x
-- (x `mappend` y) `mappend` z = x `mappend` (y `mappend` z)