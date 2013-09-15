trianglenums = scanl1 (+) [1..]

primes = sieve [2..]
         where sieve [] = []
               sieve (p:rest) = p: sieve [k| k<-rest, k `mod` p /= 0]

numberTimesDivides :: Int -> Int -> Int
numberTimesDivides b a
  |b `mod` a == 0 = 1 + numberTimesDivides (quot b a) a
  |otherwise      = 0

primeFactors :: Int -> [Int]
primeFactors n = factors n primes
                 where factors 1 list = []
                       factors k (x:xs) = dividand:factors remainder xs
                                          where dividand = numberTimesDivides k x
                                                remainder = k `quot` (x^dividand)
                 

numDivisors :: Int -> Int
numDivisors n = product $ map ((+) 1) $ primeFactors n

main = putStrLn (show output)
  where output = head $ filter (\ x -> numDivisors x > 500) trianglenums
