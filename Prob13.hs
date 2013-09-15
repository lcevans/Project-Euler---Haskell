


main = do
  input <- getContents
  --numberstrings <- (lines input)
    --  numbers = map (\ x -> read x :: Integer) numberstrings
      --numbersum = sum numbers
  putStrLn (show $ sum $ map (\ x -> read x :: Integer) (lines input))
