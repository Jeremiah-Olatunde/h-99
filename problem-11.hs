-- Modify the result of problem 10 in such a way that if an element has no 
-- duplicates it is simply copied into the result list. 
-- Only elements with duplicates are transferred as (N E) lists. 

data Box a = Multiple Int a | Single a

pack :: Eq a => [a] -> [[a]]
pack [] = []
pack (x:xs) = 
  (x : takeWhile (== x) xs) 
  : pack (dropWhile (== x) xs)

encode' :: [a] -> Box a
encode' (x:[]) = Single x
encode' (x:xs) = Multiple (length xs + 1) x 

encode :: Eq a => [a] -> [Box a]
encode = map encode' . pack
