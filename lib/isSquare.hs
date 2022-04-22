isSquare :: Integral n => n -> Bool
isSquare n = sqt * sqt == fromIntegral n
  where
    sqt = round $ sqrt $ fromIntegral n
