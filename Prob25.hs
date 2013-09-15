
fibs = 1 : 1 : zipWith (+) fibs (tail fibs)
indexfibs = zip fibs [1..]

main = putStrLn $ show $ head $ filter (\(x,y) -> (length $ show x)>999) indexfibs 
