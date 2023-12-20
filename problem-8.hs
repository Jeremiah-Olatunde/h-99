-- (**) Eliminate consecutive duplicates of list elements. 
import Data.List

-- using pattern matching
compress :: Eq a => [a] -> [a]
compress [] = []
compress (x:xs) = x : compress (dropWhile (== x) xs)

-- using Data.List imports
compress1 :: Eq a => [a] -> [a]
compress1 = (map head) . group