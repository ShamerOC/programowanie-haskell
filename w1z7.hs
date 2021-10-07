czyDoskonala :: Int -> Bool 
czyDoskonala x | sumList (dzielniki x) == x = True
czyDoskonala x = False

dzielniki :: Int -> [Int]
dzielniki x = dzielnikiHelper x [1]

dzielnikiHelper :: Int -> [Int] -> [Int]
dzielnikiHelper x y | last y >= x = init y
dzielnikiHelper x y | x `mod` last y == 0 = dzielnikiHelper x (y ++ [last y + 1])
dzielnikiHelper x y = dzielnikiHelper x (init y ++ [last y + 1])

sumList :: [Int] -> Int
sumList xs = foldr (+) 0 xs