iloczynList :: [Integer] -> Integer 
iloczynList [] = 1
iloczynList (x:xs) = x * iloczynList xs