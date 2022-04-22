nub' :: (Eq a) => [a] -> [a]
nub' [] = []
nub' (el:els) =
  if el `elem` els
  then nub' els
  else el : nub' els
