splitStringInPairs :: String -> [String]
splitStringInPairs [] = []
splitStringInPairs [x] = [[x] ++ "_"]
splitStringInPairs (x:y:xs) = [v | v <- [[x,y]]] ++ splitStringInPairs xs
