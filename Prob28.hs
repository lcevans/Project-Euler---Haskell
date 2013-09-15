

numbers = 1:[4*n^2-6*(n-1)|n <- [2..1001], n `mod` 2 == 1]

main = putStrLn $ show $ sum numbers
