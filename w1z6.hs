merge :: [Int] -> [Int] -> [Int]
merge x y = mergeHelper x y [] 

mergeHelper :: [Int] -> [Int] -> [Int] -> [Int]
mergeHelper [] [] z = z
mergeHelper [] y z = z ++ y
mergeHelper x [] z = z ++ x
mergeHelper (x:xs) (y:ys) z | x <= y = mergeHelper xs (y:ys) (z ++ [x])
mergeHelper (x:xs) (y:ys) z | x > y = mergeHelper (x:xs) ys (z ++ [y])

mergeSort :: [Int] -> [Int]
mergeSort x | length x > 2 = merge (mergeSort (take (length x `div` 2) x)) (mergeSort (drop (length x `div` 2) x))
mergeSort x | length x <= 2 = merge (take 1 x) (drop 1 x)