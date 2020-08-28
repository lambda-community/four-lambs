module Katas where

-- | If the list is empty, the result is the initial value; else
-- we recurse immediately, making the new initial value the result
-- of combining the old initial value with the first element.
foldl' ::  (b -> a -> b) -> b -> [a] -> b
foldl' = undefined

-- | If the list is empty, the result is the initial value z; else
-- apply f to the first element and the result of folding the rest
foldr' ::  (a -> b -> b) -> b -> [a] -> b
foldr' = undefined

-- | Take the first number and subtract all remaining elements from it
subtraction :: Num a => [a] -> a
subtraction = undefined

-- | Insert an element at a given position into a list.
insertAt :: a -> [a] -> Int -> [a]
insertAt = undefined

-- | Eliminate consecutive duplicates of list elements.
compress :: Eq a => [a] -> [a]
compress = undefined

-- | Duplicate the elements of a list.
duplicate ::  Eq a => [a] -> [a]
duplicate = undefined
