import Data.Char ( isLower, isLetter )

sameCase :: Char -> Char -> Bool
sameCase char1 char2
  | not (isLetter char1) || not (isLetter char2) = False
  | isLower char1 == isLower char2 = True
  | otherwise = False
