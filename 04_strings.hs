-- :type 'a' >> 'a' :: Char
-- :type "aa" >> "aa" :: [Char] is a list of chars
module Print2 where

myGreeting :: String
-- The above line reads as: "myGreeting has the type String"
myGreeting = "hello" ++ " world!" -- concatenate
-- O(n) works on any list

hello :: String
hello = "hello"

world :: String
world = "world!"

main :: IO ()
main = do
    putStrLn myGreeting
    putStrLn $ 'a' : myGreeting -- cons operator
-- $ evaluates right part of expression first same as (expression)
    putStrLn $ take 3 "Papuchon" -- see head, tail, drop
    putChar $ "Papuchon" !! 2 -- take elem at pos 2
    putStr "one, two"
    putStr ", three, and"
    putStrLn secondGreeting
        where secondGreeting = concat [hello, " ", world] -- concatenate