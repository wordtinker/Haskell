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
