doubleMe x = x + x
doubleUs x y = doubleMe x + doubleMe y
doubleSmallNumber x = if x > 100  
                         then x  
                         else x*2
combineLists x y = x ++ y -- O(n) works for any list, string are lists of chars
prependList x y = x:y -- O(1) cons operator
atPos x y = x !! y -- returns element at position,0 based
-- range
getRange = [1..20] -- ..
getWithStep =[1,3..20]
getLazy = take 24 [14, 26..] -- lazy evaluation
-- list comprehensions
firstTenDoubles = [x*2 | x <-[1..10], x*2 >= 12] -- coulde be several perdicates
twoLists = [ x*y | x <- [2,5,10], y <- [8,10,11]]
-- types
-- Int
-- Integer
-- Float
-- Double
-- Bool
-- Char

-- type annotations
-- read "5" :: Int