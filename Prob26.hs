
decimal :: Int -> Int -> [Int]  --Decimal r n returns the repeated decimal of r/n
decimal r n = (r `quot` n): decimal ((r `mod` n) * 10) n



eventuallyEqual :: (Eq a) => [a] -> [a] -> Bool  --we count the number of matches in the first 1000 digits. If the number of matches is greater than 800 we declare them 'eventually equal'.
eventuallyEqual list1 list2
  |(numMatches >= 800) = True
  |otherwise = False
               where numMatches = length $ filter (\x -> x) $ take 1000 $ zipWith (==) list1 list2

cycleLength :: [Int] -> Int  --Computes the length of the repeating cycle
cycleLength list




main = putStrLn $ show $ eventuallyEqual [1..] (9:[2..])
