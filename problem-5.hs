-- (*) Reverse a list. 

-- using pattern matching
myReverse :: [a] -> [a]
myReverse [] = []
myReverse (x:xs) = myReverse xs ++ [x]

-- using a left fold
myReverse' :: [a] -> [a]
myReverse' = foldl (\xs x -> x:xs) []

