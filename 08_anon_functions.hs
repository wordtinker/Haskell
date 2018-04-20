-- addOne x = x + 1
addOne = \x -> x + 1

addOneIfOdd n = case odd n of
  True -> (\x -> x + 1) n
  False -> n
