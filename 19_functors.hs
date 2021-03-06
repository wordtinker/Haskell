-- a type that can be mapped over
-- Laws
-- The first functor law states that if we map the id function
-- over a functor, the functor that we get back should be the same
-- as the original functor.
-- fmap id == id
-- The second law says that composing two functions and then
-- mapping the resulting function over a functor should be the same
-- as first mapping one function over the functor and then mapping the other one.
-- fmap (f . g) == fmap f . fmap g
class Functor f where
    fmap :: (a -> b) -> f a -> f b
	
instance Functor [] where  
    fmap = map 
	
instance Functor Maybe where  
    fmap f (Just x) = Just (f x)  
    fmap f Nothing = Nothing

-- . b = (fmap.fmap) (++ "lol") (Just ["Hi,", "Hello"])
-- fmap can be composed for deeper lever of access
getInt :: IO Int
getInt = fmap read getLine

bumpIt :: IO Int
bumpIt = do
  intVal <- getInt
  return (intVal + 1)
  
bumpIt2 = fmap (+1) getInt -- same
bumpIt3 = (+1) <$> getInt -- same