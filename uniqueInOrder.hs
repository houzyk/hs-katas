import Data.List (nub, group)

uniqueInOrder :: Eq a => [a] -> [a]
uniqueInOrder [] = []
uniqueInOrder lst = map head (group lst)
