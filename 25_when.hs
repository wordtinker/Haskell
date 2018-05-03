import Control.Monad   

main = do
    c <- getChar
    when (c /= ' ') $ do
        putChar c
        main

-- use 'when' instead of 
-- if c /= ' '  
--         then do  
--            putChar c  
--            main  
--        else return ()