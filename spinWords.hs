revWord :: String -> String
revWord word
  | length word >= 5 = reverse word
  | otherwise = word

spinWords :: String -> String
spinWords sentence = unwords [revWord word | word <- words sentence]
