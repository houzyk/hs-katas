uniqueNumberList :: [Integer] -> [Integer]
uniqueNumberList [] = []
uniqueNumberList (x:xs) = [v | v <- [x], x `notElem` xs] ++ uniqueNumberList xs

multiplesOf3And5 :: Integer -> Integer
multiplesOf3And5 number
  | number <= 0 = 0
  | otherwise =
    let
      range = [0..number - 1]
      multiples = [m | m <- range, m `mod` 5 == 0 || m `mod` 3 == 0]
    in
      sum $ uniqueNumberList multiples
