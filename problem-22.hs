
-- range :: Int -> Int -> [Int]
-- range i j = [i..j]

-- gaurds 
range :: Int -> Int -> [Int]
range i j | i == j = [j]
          | otherwise = i : range (i + 1) j

