

-- using prelude functions
-- slice :: [a] -> Int -> Int -> [a]
-- slice xs start end = take (end - start + 1) (drop (start - 1) xs)



-- not using prelude functions
slice :: [a] -> Int -> Int -> [a]
slice _      1     0   = []
slice (x:xs) 1     end = x : slice xs 1 (end - 1)
slice (x:xs) start end = slice xs (start - 1) (end - 1)