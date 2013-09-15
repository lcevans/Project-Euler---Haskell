
sumPrimes n = sieve [2..n]                             
  where                                           
    sieve [] = 0
    sieve (p:xs) = p + sieve [x | x <- xs, rem x p /= 0]

main = putStrLn (show output)
       where 
         output = sumPrimes 200000
