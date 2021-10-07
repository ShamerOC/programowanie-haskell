s :: Integer -> Integer -> Integer
s n k | n == 0 && k == 0 = 1
s n k | n >= 1 && k == 0 = 0
s n k | n >= 1 && k == n = 1
s n k | n >= 1 && k >= 1 && n >= k = (n-1) * s (n-1) k + s (n-1) (k-1)