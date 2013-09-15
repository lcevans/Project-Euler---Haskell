import Data.Char

odds :: [a] -> [a]
odds [] = []
odds [x] = [x]
odds (x:y:xs) = x:(odds xs)

match :: Int -> Bool
match n = (odds $ map digitToInt $ show n) == [1,2,3,4,5,6,7,8,9,0]

main = putStrLn $ show $ head $ filter match [n^2| n <- [1000000000..1500000000]]
