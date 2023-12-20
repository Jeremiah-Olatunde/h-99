--(*) Find out whether a list is a palindrome. 


isPalindrome :: Eq a => [a] -> Bool
isPalindrome xs = xs == reverse xs


isPalindrome' :: Eq a => [a] -> Bool
isPalindrome' [] = True
isPalindrome' xs = (head xs == last xs) && isPalindrome (init . tail $ xs)