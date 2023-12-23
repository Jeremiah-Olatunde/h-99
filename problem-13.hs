
data Box a = Multiple Int a | Single a
  deriving Show


boxed :: Int -> a -> Box a
boxed 1 = Single
boxed n = Multiple n

encodeDirect :: Eq a => [a] -> [Box a]
encodeDirect [] = []
encodeDirect (x:xs) =  boxed (length rep + 1) x : encodeDirect rest
  where rep  = takeWhile (== x) xs
        rest = dropWhile (== x) xs  
