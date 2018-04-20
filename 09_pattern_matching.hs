isItTwo :: Integer -> Bool
isItTwo 2 = True
isItTwo _ = False -- order matters

newtype Username = Username String
newtype AccountNumber = AccountNumber Integer
data User = UnregisteredUser
  | RegisteredUser Username AccountNumber

printUser :: User -> IO ()
printUser UnregisteredUser = putStrLn "UnregisteredUser"
printUser (RegisteredUser (Username name)
                          (AccountNumber acctNum))
          = putStrLn $ name ++ " " ++ show acctNum

f :: (a, b) -> (c, d) -> ((b, d), (a, c))
f (a, b) (c, d) = ((b, d), (a, c)) -- matches tuples

third3 :: (a, b, c) -> c
third3 (_, _, x) = x

