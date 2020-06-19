module MaxHeap where

data Tree a = Node (Tree a) (Tree a)
            | Leaf a
            deriving (Eq, Show, Ord)


