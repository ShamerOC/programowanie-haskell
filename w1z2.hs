sumaWartosci :: (Int -> Int) -> (Int -> Int) -> Int -> Int -> Int
sumaWartosci f g x y = f x + g y

h :: Int -> Int
h x = 2*x

l :: Int -> Int
l y = 3*y


-- ghci
-- :l w1z2.hs
-- sumaWartosci h l 1000 100