import Control.Applicative

boop = (*2)
doop = (+10)

bip :: Integer -> Integer
bip = boop . doop -- simple composition

bbop :: Integer -> Integer
bbop = (+) <$> boop <*> doop -- (x*2) + (x + 10)
-- ((+) . (*2))
-- two functions would share the same input and
-- we want to apply some other function to the
-- result of those to reach a final result. 

duwop :: Integer -> Integer
duwop = liftA2 (+) boop doop -- same as abowe

boopDoop :: Integer -> Integer  -- same
boopDoop = do
  a <- boop
  b <- doop
  return (a + b)
