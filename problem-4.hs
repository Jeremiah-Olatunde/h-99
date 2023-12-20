-- (*) Find the number of elements in a list. 

-- using pattern matching
myLength :: [a] -> Int
myLength [] = 0
myLength (x:xs) = 1 + myLength xs

-- using foldr 
myLength' :: [a] -> Int
myLength' = foldr (\a b -> 1 + b) 0

-- using built-in
myLength'' :: [a] -> Int
myLength'' = length