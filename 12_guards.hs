myAbs :: Integer -> Integer
myAbs x = if x < 0 then (-x) else x

myAbs1 :: Integer -> Integer
myAbs1 x = case x < 0 of
  True -> -x
  False -> x
-- same with guards
myAbs2 :: Integer -> Integer
myAbs2 x
  | x < 0 = -x
  | otherwise = x -- fallback for True
-- where is allowed in guards
avgGrade :: (Fractional a, Ord a) => a -> Char
avgGrade x
  | y >= 0.9  = 'A'
  | y >= 0.8  = 'B'
  | y >= 0.7  = 'C'
  | y >= 0.59 = 'D'
  | y < 0.59  = 'F'
  where y = x / 100
