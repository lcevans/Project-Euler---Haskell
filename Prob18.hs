
combine :: [Int] -> [Int] -> [Int]
combine _ [] = []
combine [x] _ = []
combine (x:z:xs) (y:ys) = (y + max x z) : combine (z:xs) ys


main = do
  fullstring <- getContents
  let strings = reverse $ lines fullstring --Get list of strings from input
      listlist = map (\ x -> map read $ words x) strings  --Turns each string into a list of ints
  putStrLn $ show $ foldl combine (repeat 0) listlist
