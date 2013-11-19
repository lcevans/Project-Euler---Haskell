primes :: [Integer]
primes = sieve [2..]
  where
    sieve (p:xs) = p : sieve [x|x <- xs, x `mod` p > 0]

squares = [x^2 | x<-[1..]]

badNums = [p + 2 * s | p<-primes, s<-squares]

main = putStrLn $ show $ answer
       where answer = take 5 badNums
