findOutlier :: [Int] -> Int
findOutlier lst =
  let
    group1 = filter odd lst
    group2 = filter even lst
  in
    if length group1 < length group2
    then head group1
    else head group2
