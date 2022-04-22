isAsc :: [Int] -> Bool
isAsc [] = True
isAsc [any] = True
isAsc (el:list)
  | el <= successor = isAsc list
  | otherwise = False
  where
    successor = head list

isAsc' :: [Int] -> Bool
isAsc' [] = True
isAsc' [any] = True
isAsc' (first:second:list) = (first <= second) && isAsc' (second:list)
