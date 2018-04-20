module FunctionWithWhere where

printInc x = let plusTwo = x + 2
    in print plusTwo 
-- expression
cylinder :: (RealFloat a) => a -> a -> a  
cylinder r h =
    let sideArea = 2 * pi * r * h -- more local than where  
        topArea = pi * r ^2  
    in  sideArea + 2 * topArea  -- scope is only here