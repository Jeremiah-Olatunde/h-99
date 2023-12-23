-- Modify the result of problem 10 in such a way that if an element has no 
-- duplicates it is simply copied into the result list. 
-- Only elements with duplicates are transferred as (N E) lists. 

import Data.List (group)

data Box a = Multiple Int a | Single a
  deriving Show

encodeModified' :: [a] -> Box a
encodeModified' (x:[]) = Single x
encodeModified' (x:xs) = Multiple (length xs + 1) x 

encodeModified :: Eq a => [a] -> [Box a]
encodeModified = map encodeModified' . group
