-- simple data declaration
module ChangeMood where

data Mood = Blah | Woot deriving Show

changeMood :: Mood -> Mood
changeMood Blah = Woot
changeMood Woot = Blah

-- see == not || &&
greetIfCool :: String -> IO ()
greetIfCool coolness =
  if cool
    then putStrLn "eyyyyy. What's shakin'?"
  else
    putStrLn "pshhhh."
  where cool = coolness == "downright frosty yo"
-- Existing types
-- Int
-- Integer
-- Float
-- Double
-- Bool
-- Char
-- Tuple
-- () is an empty tuple
aTuple = (,) 8 'a'
anotherTuple = (10, "string")
firstAndSecond t = (fst t, snd t) -- first and last element of tuple
-- List
-- [a] list of `a` elements see 04_strings.hs for examples