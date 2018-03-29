-- define typeclass
--class Eq a where  
--    (==) :: a -> a -> Bool  
--    (/=) :: a -> a -> Bool  
--    x == y = not (x /= y)  
--    x /= y = not (x == y)
-- subclassing
-- class (Eq a) => Num a where  

data TrafficLight = Red | Yellow | Green
-- make implmentation of Eq
instance Eq TrafficLight where  
    Red == Red = True  
    Green == Green = True  
    Yellow == Yellow = True  
    _ == _ = False 

instance Show TrafficLight where  
    show Red = "Red light"  
    show Yellow = "Yellow light"  
    show Green = "Green light"

-- content of Maybe must belong to Eq typeclass 
--instance (Eq m) => Eq (Maybe m) where  
--    Just x == Just y = x == y  
--    Nothing == Nothing = True  
--    _ == _ = False  