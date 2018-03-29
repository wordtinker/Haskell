data Point = Point Float Float deriving (Show)
data Shape =
     Circle Point Float
   | Rectangle Point Point
     deriving (Show)

surface :: Shape -> Float
surface (Circle _ r) = pi * r ^2
surface (Rectangle (Point x1 y1) (Point x2 y2)) = (abs $ x2 - x1) * (abs $ y2 - y1)

data Person = Person { firstName :: String  
                     , lastName :: String  
                     , age :: Int  
                     , height :: Float  
                     , phoneNumber :: String  
                     , flavor :: String  
                     } deriving (Show, Eq) -- will derive automatically using ctor values  
data Car = Car {company :: String, model :: String, year :: Int} deriving (Show)
-- Can create instance Car {company="Ford", model="Mustang", year=1967}  

-- We'll be using a parameterized type because even though
-- it will usually contain numeric types, it will still
-- support several of them.
-- convention! never add typeclass constraints in data declarations.
data Vector a = Vector a a a deriving (Show)

-- add constraints here
vplus :: (Num t) => Vector t -> Vector t -> Vector t  
(Vector i j k) `vplus` (Vector l m n) = Vector (i+l) (j+m) (k+n)  
  
vectMult :: (Num t) => Vector t -> t -> Vector t  
(Vector i j k) `vectMult` m = Vector (i*m) (j*m) (k*m)  
  
scalarMult :: (Num t) => Vector t -> Vector t -> t  
(Vector i j k) `scalarMult` (Vector l m n) = i*l + j*m + k*n

-- True is GT, it's farther right
data ComparableType = False | True deriving(Show, Eq, Ord)
-- Enum
data Day = Monday | Tuesday | Wednesday | Thursday | Friday | Saturday | Sunday   
           deriving (Eq, Ord, Show, Read, Bounded, Enum)  

-- alias for types
type String = [Char] 