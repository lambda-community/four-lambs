module FourLambs where

reverse' :: [a] -> [a]
reverse' []     = []
reverse' (x:xs) = (reverse xs) ++ [x]

take' :: Int -> [a] -> [a]
take' _ []    = []
take' n (x:xs)
  | n == 0    = []
  | n >  0    = x:(take' (n-1) xs)
  | otherwise = reverse' (take' (negate n) (reverse' (x:xs)))

any' :: (a -> Bool) -> [a] -> Bool
any' f []     = False
any' f (x:xs)
  | f x       = True
  | otherwise = any' f xs

any'' :: (a -> Bool) -> [a] -> Bool
any'' f xs = reduce' (\x y -> f x || y) False xs

sum' :: Num a => [a] -> a
sum' []     = 0
sum' (x:xs) = x + (sum' xs)

mult' :: Num a => [a] -> a8
mult' []     = 1
mult' (x:xs) = x * (mult' xs)

reduce' :: (a -> b -> b) -> b -> [a] -> b
reduce' f z []     = z
reduce' f z (x:xs) = f x (reduce' f z xs)

concat' :: [[a]] -> [a]
concat' xs = reduce' (++) []  xs

map' :: (a -> b) -> [a] -> [b]
map' _ []     = []
map' f (x:xs) = f x : map' f xs
