-- (**) Flatten a nested list structure. 

data NestedList a = Elem a | List [NestedList a]
  deriving Show

-- flatten :: NestedList a -> [a]
-- flatten (List []) = []
-- flatten (List ((Elem a):ns)) = a:(flatten $ List ns)
-- flatten (List ((List n):ns)) = (flatten $ List n) ++ (flatten $ List ns)

-- note how this pattern is just one above base case
-- swap with base case
-- flatten :: NestedList a -> [a]
-- flatten (Elem a) = [a]
-- flatten (List (x:[])) = (flatten x)
-- flatten (List (x:xs)) = (flatten x) ++ (flatten $ List xs)

flatten :: NestedList a -> [a]
flatten (Elem a)      = [a]
flatten (List [])     = []
flatten (List (x:xs)) = flatten x ++ (flatten . List $ xs)