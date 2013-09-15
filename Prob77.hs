--cointypes = reverse [1,2,5,10,20,50,100,200]

import Data.Array
-- import Data.Array.Unboxed
 
primesSA = 2 : prs
  where 
    prs = 3 : sieve prs 3 []
    sieve (p:ps) x fs = [i*2 + x | (i,e) <- assocs a, e] 
                        ++ sieve ps (p*p) fs'
     where
      q     = (p*p-x)`div`2                  
      fs'   = (p,0) : [(s, rem (y-q) s) | (s,y) <- fs]
      -- a     :: UArray Int Bool
      a     = accumArray (\ b c -> False) True (1,q-1)
                         [(i,()) | (s,y) <- fs, i <- [y+s, y+s+s..q]]

numWays :: Int -> [Int] -> Int
numWays 0 [] = 1
numWays n [] = 0
numWays n (x:xs) = sum $ map (\y -> numWays y xs) $ [n-z| z <- [0,x..n]]

myfunc :: Int -> (Int,Int)
myfunc n = (n, numWays n $ reverse $ takeWhile (\x -> x < n) primesSA)

--main = putStrLn $ show $ myfunc 10
main = putStrLn $ show $ head $ filter (\(x,y) -> y > 5000) $ map myfunc [5..]
