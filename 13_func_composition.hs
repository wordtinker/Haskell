-- (f.g) x = f (g x)

negSum x = (negate . sum) x
negSum2 x = negate . sum $ x -- same

takeReverse x = take 5 . reverse $ x