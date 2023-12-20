
-- Find the last element of a list.

-- using prelude last
-- warning: partial function (exception on [])
myLast :: [a] -> a
myLast = last

-- using pattern matching
-- warning: partial function (exception on [])
myLast' :: [a] -> a
myLast' [x] = x
myLast' (_:xs) = myLast xs

-- using prelude functions and composition
-- warning: partial function (exception on [])
myLast'' :: [a] -> a
myLast'' = head . reverse