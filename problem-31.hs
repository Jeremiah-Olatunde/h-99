-- (**) Determine whether a given integer number is prime. 

-- ub :: (RealFrac b, Integral c, Floating b) => b -> c
-- ub = round . sqrt

isPrime :: Int -> Bool
isPrime x = all ((/= 0) . mod x) [2..div x 2]