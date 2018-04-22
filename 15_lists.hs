myTail :: [a] -> [a]
myTail [] = [] -- matches empty ctor
myTail (_ : xs) = xs -- matches cons ctor

safeTail :: [a] -> Maybe [a]
safeTail [] = Nothing
safeTail (x:[]) = Nothing
safeTail (_:xs) = Just xs
-- lists are lazily evaluated
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
-- matching list ctors
tell :: (Show a) => [a] -> String  
tell [] = "The list is empty"  
tell (x:[]) = "The list has one element: " ++ show x -- same as [x]
tell (x:y:[]) = "The list has two elements: " ++ show x ++ " and " ++ show y -- same as [x,y] 
tell (x:y:_) = "This list is long. The first two elements are: " ++ show x ++ " and " ++ show y
-- list comprehension
squares = [x^2 | x <- [1..10]] -- generator
squaresOfEven = [x^2 | x <- [1..15], rem x 2 == 0] -- predicate
multiplicator = [x^y | x <- [1..5], y <- [2, 3]] -- two generators
acro xs = [x | x <- xs, elem x ['A'..'Z']] -- produces acronyms

calcBmis :: (RealFloat a) => [(a, a)] -> [a]  
calcBmis xs = [bmi | (w, h) <- xs, let bmi = w / h ^ 2] -- can be used in comprehensions

-- map and filer
plusTen = map (+10)
-- fmap same for functors
filterEven = filter even
filterVowels = filter (\x -> elem x "aeiou")