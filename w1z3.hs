-- ocena :: Double -> String
-- ocena 2.0 = "niezaliczone"
-- ocena 5.0 = "brawo!"
-- ocena x = "wpisane masz " ++ show x

ocena :: Double -> String
ocena x | x == 2.0 = "niezaliczone"
ocena x | x == 5.0 = "brawo"
ocena x = "wpisane masz " ++ show x