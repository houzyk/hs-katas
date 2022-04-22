elem' :: (Eq a) => a -> [a] -> Bool
elem' _ [] = False
elem' element list = getResult comparisonList
  where
    getResult = not . null
    comparisonList = [x |
                  x <- list,
                  element == x]

elem'' :: (Eq a) => a -> [a] -> Bool
elem'' _ [] = False
elem'' element (x:xs) = (x == element) || elem'' element xs
