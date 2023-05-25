import Data.List

stringsEqual :: String -> String -> Bool
stringsEqual "" "" = True
stringsEqual _ "" = False
stringsEqual "" _ = False
stringsEqual (x:xs) (y:ys) = (x == y) && stringsEqual xs ys

isAnagram :: String -> String -> Bool
isAnagram word1 word2 = stringsEqual (sort word1) (sort word2)
