divisors :: Int -> [Int]
divisors n = filter (((==) 0).(mod n))[k |k <- [1..n]]  --Returns a list of all integer divisors of n

isPrime :: Int -> Bool
isPrime n = 2 == (length (divisors n))

primeFactors :: Int -> [Int]
primeFactors 1 = []
primeFactors n = firstprime : primeFactors remaining
                 where
                   firstprime = head(filter isPrime (divisors n))
                   remaining = n `quot` firstprime


main = putStrLn (show output)
       where output = primeFactors 600851475143