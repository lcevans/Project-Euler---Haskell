divisors :: Int -> [Int]
divisors n = filter (((==) 0).(mod n))[k |k <- [1..n]]  --Returns a list of all integer divisors of n

isPrime :: Int -> Bool
isPrime n = 2 == (length (divisors n))

primes = filter isPrime [1..]                   --My naive implementation. Would work but too slow.

primesT = sieve [2..]                             -- I found this code online. Works by taking each prime and throwing out all numbers that are a multiple of that prime.
  where                                           -- That is it literally mimics the "by hand" implementation of the sieve of Eratosthenes, taking advantage of lazy evaluation!
    sieve (p:xs) = p : sieve [x | x <- xs, rem x p /= 0]

main = putStrLn (show output)
       where 
         output = primesT !! (10001-1)
