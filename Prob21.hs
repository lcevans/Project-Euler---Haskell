divisorSum :: Int -> Int
divisorSum n = sum $ filter (\ k -> n `mod` k == 0) [1..(n-1)]

amicable :: Int -> Bool
amicable n = ((divisorSum n) /= n) && ((divisorSum $ divisorSum n) == n)

--main = putStrLn $ show $ amicable 284
main = putStrLn $ show $ sum $ filter amicable [1..10000]
