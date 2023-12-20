-- Pack consecutive duplicates of list elements into sublists.
import Data.List


pack :: Eq a => [a] -> [[a]]
pack [] = []
pack (x:xs) = (x : takeWhile (== x) xs) : pack (dropWhile (== x) xs)



