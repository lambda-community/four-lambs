module FourLambs where

reverse' :: [a] -> [a]
reverse' []     = []
reverse' (x:xs) = reverse xs ++ [x]

-- | An improvement to the standard `take`.
-- If n is negative, it will _take_ the last n elements of the list.
take' :: Int -> [a] -> [a]
take' _ []    = []
take' n (x:xs)
  | n == 0    = []
  | n >  0    = x : take' (n-1) xs
  | otherwise = reverse' (take' (negate n) (reverse' (x:xs)))

{-
-- Execution works as a rewriting system until the expressions reduces into a value
-- https://en.wikipedia.org/wiki/Abstract_rewriting_system
-- https://en.wikipedia.org/wiki/Rewriting
take' 5 1:2:3:4:[] = 1:(take' 4 2:3:4:[])
                   = 1:2:(take' 3 3:4:[])
                   = 1:2:3:(take' 2 4:[])
                   = 1:2:3:4:(take' 1 [])
                   = 1:2:3:4:[]
-}

-- with hand written recursion
any' :: (a -> Bool) -> [a] -> Bool
any' f []     = False
any' f (x:xs)
  | f x       = True
  | otherwise = any' f xs

-- implicit recursion via reduce
any'' :: (a -> Bool) -> [a] -> Bool
any'' f = reduce' (\x y -> f x || y) False

concat' :: [[a]] -> [a]
concat' []     = []
concat' (x:xs) = x ++ concat xs

concat'' :: [[a]] -> [a]
concat'' xs = reduce' (++) []  xs

sum' :: Num a => [a] -> a
sum' []     = 0
sum' (x:xs) = x + sum' xs

sum'' :: Num a => [a] -> a
sum'' = reduce' (+) 0 -- point free 

mult' :: Num a => [a] -> a
mult' []     = 1
mult' (x:xs) = x * mult' xs

mult'' :: Num a => [a] -> a
mult'' = reduce' (*) 1 -- point free

reduce' :: (a -> b -> b) -> b -> [a] -> b
reduce' f z []     = z
reduce' f z (x:xs) = f x (reduce' f z xs)

map' :: (a -> b) -> [a] -> [b]
map' _ []     = []
map' f (x:xs) = f x : map' f xs

quickSort :: Ord a => [a] -> [a]
quickSort = quickSortOn id
                   
quickSortOn :: Ord a => (b -> a) -> [b] -> [b]
quickSortOn f []     = []
quickSortOn f (x:xs) = quickSortOn f (filter (\a -> f a <= f x) xs)
                       ++ [x] ++
                       quickSortOn f (filter (\a -> f a > f x) xs)
