triple x = x * 3
-- let triple x = x * 3 in GHCi
square x = pi * x * x
-- same as div x y, infix notation
idiv x y = x `div` y
-- (+) 100 100 is the same as 100 + 100
doubleMe x = x + x
doubleUs x y = doubleMe x + doubleMe y
doubleSmallNumber x = if x > 100  
                         then x  
                         else x*2
-- functions
-- declaration
lucky :: (Integral a) => a -> String -- typeclass 'a' of Integral
lucky 7 = "LUCKY NUMBER SEVEN!" -- separate declaration for every case
lucky x = "SOrry, you are out of luck!"

factorial :: (Integral a) => a -> a
factorial 0 = 1
factorial n = n * factorial (n - 1)