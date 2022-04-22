getVowelCount :: String -> Int
getVowelCount str =
  let
    vowels = ['a', 'e', 'i', 'o', 'u']
    totalVowels = [v | v <- str, v `elem` vowels]
  in
    length totalVowels
