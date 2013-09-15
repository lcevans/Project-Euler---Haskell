import Data.Char

sumDigits :: Integer -> Int
sumDigits n = sum $ map digitToInt $ show n

main = putStrLn $ show $ sumDigits $ product [1..100]
