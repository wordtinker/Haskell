import Data.Char

main = do
    putStrLn "Hello, what's your first name?."
    firstName <- getLine
    putStrLn "What's your last name?"
    lastName <- getLine
    let bigFirstName = map toUpper firstName
        bigLastName = map toUpper lastName
        greetPhrase = makeGreeting bigFirstName bigLastName
    putStrLn $ greetPhrase

makeGreeting :: String -> String -> String
makeGreeting first last = "hey " ++ first ++ " " ++ last ++ ", how are you?"