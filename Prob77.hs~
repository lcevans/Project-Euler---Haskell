--cointypes = reverse [1,2,5,10,20,50,100,200]

numWays :: Int -> [Int] -> Int
numWays 0 [] = 1
numWays n [] = 0
numWays n (x:xs) = sum $ map (\y -> numWays y xs) $ [n-z| z <- [0,x..n]]

myfunc :: Int -> (Int,Int)
myfunc n = (n, numWays n $ reverse [1..n-1])

main = putStrLn $ show $ myfunc 100
--main = putStrLn $ show $ head $ filter (\(x,y) -> ((y `mod` 1000000) == 0)) $ map myfunc [1..]
