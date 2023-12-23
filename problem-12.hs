

data Box a = Multiple Int a | Single a
  deriving Show

-- using both list concatenation operator and the cons operator
decodeModified :: [Box a] -> [a]
decodeModified []                  = []
decodeModified ((Single x):xs)     = x : decodeModified xs
decodeModified ((Multiple n x):xs) = take n (repeat x) ++ decodeModified xs


-- using solely cons operator
decode :: [Box a] -> [a]
decode [] = []
decode ((Single x):xs)     = x : decode xs
decode ((Multiple 0 x):xs) = decode xs
decode ((Multiple n x):xs) = x : decode ((Multiple (n-1) x):xs)