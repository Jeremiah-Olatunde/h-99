-- Run-length encoding of a list. 
-- Consecutive duplicates of elements are encoded as lists (N E) 
-- where N is the number of duplicates of the element E. 

pack :: Eq a => [a] -> [[a]]
pack [] = []
pack (x:xs) = (x : takeWhile (== x) xs) : pack (dropWhile (== x) xs)

-- using pack function (equivalent to group)
encode :: Eq a => [a] -> [(Int, a)]
encode = map (\x -> (length x, head x)) . pack

-- implementing above using list comprehensions
encode1 xs = [(length x, head x) | x <- pack xs]

-- refactoring pack logic
encode2 :: Eq a => [a] -> [(Int, a)]
encode2 [] = []
encode2 (x:xs) 
  = ((1 +) $ length $ takeWhile (== x) xs, x) : encode (dropWhile (== x) xs)

