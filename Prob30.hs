import Data.Char

isGood :: Int -> Bool
isGood n =  n == (sum $ map (\x -> (digitToInt x) ^ 5) $ show n)

main = putStrLn $ show $ sum $ filter isGood [2..500000]
