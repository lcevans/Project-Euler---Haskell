modExp :: Integer -> Integer -> Integer -> Integer -- n^k mod 10^d
modExp n k d
  |k == 0 = 1
  |(k `mod` 2) == 0 = ((modExp n (k `quot` 2) d)^2 `mod` (10^d))
  |otherwise = (n * (modExp n (k-1) d)) `mod` (10^d)

numbers = [modExp n n 10 | n<-[1..1000]]
answer = sum numbers

main = putStrLn $ show $ answer

