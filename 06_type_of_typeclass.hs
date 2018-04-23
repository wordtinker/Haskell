-- implement Eq typeclass
-- use default implementation of Show
data DayOfWeek =
    Mon | Tue | Weds | Thu | Fri | Sat | Sun deriving (Show)
-- alias
type Day = Int
data Date =
    Date DayOfWeek Day deriving (Show)

instance Eq DayOfWeek where
    (==) Mon Mon = True
    (==) Tue Tue = True
    (==) Weds Weds = True
    (==) Thu Thu = True
    (==) Fri Fri = True
    (==) Sat Sat = True
    (==) Sun Sun = True
    (==) _ _ = False -- unconditional case

instance Eq Date where
    (==) (Date weekday dayOfMonth)
         (Date weekday' dayOfMonth') =
      weekday == weekday' && dayOfMonth == dayOfMonth'

-- define data with polymorphic param
data Identity a = 
    Identity a deriving (Show)
instance Eq a => Eq (Identity a) where -- add constraint here
    (==) (Identity v) (Identity v') = v == v'

-- record syntax
-- can use as function e.g. age personInstance
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

-- Pattern matching on a data constructor forces evaluation.
-- Always. Pattern matching on a newtype constructor never
-- forces evaluation.
