uniqueArrayElementCount :: [Int] -> Int

uniqueArrayElementCount [] = 0
uniqueArrayElementCount (x:xs) = 
length [v | v <- [x], x `notElem` xs] + uniqueArrayElementCount xs
