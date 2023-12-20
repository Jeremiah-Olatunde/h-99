-- (*) Find the K'th element of a list. 
-- The first element in the list is number 1

-- using pattern matching
-- warning: partial function (execption when i < 1 || length < i)
elementAt :: [a] -> Int -> a
elementAt (x:xs) 1 = x
elementAt (x:xs) i = elementAt xs (i - 1)

-- using prelude function
-- warning: partial function (execption when i < 0 || length < i)
elementAt' :: [a] -> Int -> a
elementAt' xs i = xs !! (i - 1) 

