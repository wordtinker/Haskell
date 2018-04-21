myTail :: [a] -> [a]
myTail [] = [] -- matches empty ctor
myTail (_ : xs) = xs -- matches cons ctor

safeTail :: [a] -> Maybe [a]
safeTail [] = Nothing
safeTail (x:[]) = Nothing
safeTail (_:xs) = Just xs

ten = [1..10]
anotherTen = enumFromTo 1 10
eachThree = [1,3..10] -- [1,3,5,7,9]
eachThree2 = enumFromThenTo 1 3 10
decrement = enumFromThenTo 10 9 (-1)

takeFive = take 5
dropFive = drop 5
splitAtHalf xs = splitAt (length xs `div` 2) xs
takeWhilePos = takeWhile (>0)
dropWhilePos = dropWhile (>0)

-- list comprehension
squares = [x^2 | x <- [1..10]] -- generator
squaresOfEven = [x^2 | x <- [1..15], rem x 2 == 0] -- predicate
multiplicator = [x^y | x <- [1..5], y <- [2, 3]] -- two generators
acro xs = [x | x <- xs, elem x ['A'..'Z']] -- produces acronyms

