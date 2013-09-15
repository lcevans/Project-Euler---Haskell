cointypes = reverse [1,2,5,10,20,50,100,200]

numWays :: Int -> [Int] -> Int
numWays 0 [] = 1
numWays n [] = 0
numWays n (x:xs) = sum $ map (\y -> numWays y xs) $ [n-z| z <- [0,x..n]]

main = putStrLn $ show $ numWays 200 cointypes
