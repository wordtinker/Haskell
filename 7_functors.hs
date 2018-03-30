-- a type that can be mapped over
-- Laws
-- The first functor law states that if we map the id function
-- over a functor, the functor that we get back should be the same
-- as the original functor.
-- The second law says that composing two functions and then
-- mapping the resulting function over a functor should be the same
-- as first mapping one function over the functor and then mapping the other one.
class Functor f where  
    fmap :: (a -> b) -> f a -> f b
	
instance Functor [] where  
    fmap = map 
	
instance Functor Maybe where  
    fmap f (Just x) = Just (f x)  
    fmap f Nothing = Nothing