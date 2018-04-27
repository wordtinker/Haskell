-- class Monad m where  
--    return :: a -> m a    
--    (>>=) :: m a -> (a -> m b) -> m b    -- bind operator
--    (>>) :: m a -> m b -> m b  
--    x >> y = x >>= \_ -> y  
--    fail :: String -> m a  
--    fail msg = error msg  
-- If we have a fancy value and a function that takes
-- a normal value but returns a fancy value, how do we feed
-- that fancy value into the function?
-- Laws
-- return x >>= f is the same damn thing as f x
-- m >>= return is no different than just m
-- Doing (m >>= f) >>= g is just like doing m >>= (\x -> f x >>= g)

z = Just 9 >>= (\x -> Just (x > 8))
y :: Maybe Bool  
y = do   
    x <- Just 9  
    Just (x > 8)

binding :: IO ()
binding = do
  name <- getLine
  putStrLn name

binding' :: IO () -- same as above
binding' =
  getLine >>= putStrLn
  
twoBinds :: IO ()
twoBinds = do
  putStrLn "name pls:"
  name <- getLine
  putStrLn "age pls:"
  age <- getLine
  putStrLn ("y helo thar: "
            ++ name ++ " who is: "
            ++ age ++ " years old.")

twoBinds' :: IO ()
twoBinds' =
  putStrLn "name pls:" >>
  getLine >>=
  \name ->
  putStrLn "age pls:" >>
  getLine >>=
  \age ->
  putStrLn ("y helo thar: "
            ++ name ++ " who is: "
            ++ age ++ " years old.")