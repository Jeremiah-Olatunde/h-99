
-- using prelude
-- split :: [a] -> Int -> ([a], [a])
-- split xs l = (take l xs, drop l xs)


-- no prelude
split :: [a] -> Int -> ([a], [a])
split xs l = split' ([], xs) l

split' :: ([a], [a]) -> Int -> ([a], [a])
split' (fst, snd)     0 = (fst, snd)
split' (fst, (s:snd)) l = split' (fst ++ [s], snd) (l - 1)
