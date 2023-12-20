-- (*) Find the last-but-one (or second-last) element of a list. 

-- using pattern matching
-- warning: partial function (exception on [])
myButLast :: [a] -> a
myButLast (x:y:[]) = x
myButLast (x:xs) = myButLast xs

-- using function composition and prelude functions
-- warning: partial function (exception on [])
myButLast' :: [a] -> a
myButLast' = head . tail . reverse