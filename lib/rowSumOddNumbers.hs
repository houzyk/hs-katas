import Data.List (sort)

leavesNumber :: (Eq p, Num p) => p -> p
leavesNumber 0 = 0
leavesNumber num = num + leavesNumber (num - 1)

rowSumOddNumbers :: Int -> Int
rowSumOddNumbers n =
  let
    topTreeOdds = take (leavesNumber n) [1, 3 ..]
    levelOdds = take n (reverse (sort topTreeOdds))
  in
    sum levelOdds
