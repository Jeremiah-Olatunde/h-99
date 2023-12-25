

-- note errors if index out of range
insert :: a -> [a] -> Int -> [a]
insert a xs     1 = a : xs
insert a (x:xs) i = x : insert a xs (i - 1)