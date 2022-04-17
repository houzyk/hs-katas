import Data.List (group)

uniqueInOrder :: Eq a => [a] -> [a]
uniqueInOrder [] = []
uniqueInOrder lst = map head (group lst)
