import System.IO  

main = do  
    contents <- readFile "file.txt"  
    putStr contents 
-- see writeFile and appendFile

--main = do     
--    withFile "file.txt" ReadMode (\handle -> do  
--        contents <- hGetContents handle     
--        putStr contents)  

--main = do  
--    handle <- openFile "file.txt" ReadMode  
--    contents <- hGetContents handle  
--    putStr contents  
--    hClose handle
