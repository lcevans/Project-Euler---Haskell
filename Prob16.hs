import Data.Char

digitSum :: Integer -> Int
digitSum n = sum $ map digitToInt (show n)

main = putStrLn (show answer)
       where answer = digitSum (2^1000)
