seqListOfJust = sequenceA [Just 1, Just 2, Just 3] -- flip monads Just [1,2,3]
seqListOfJustN = sequenceA [Just 1, Just 2, Nothing]

half x = if even x then Just (x `div` 2) else Nothing
trav = traverse half [2,4..10] -- applies function and flips
sameTrav = sequenceA . fmap half $ [2,4..10]
travN = traverse half [1..10]