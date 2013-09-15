--Not sure how to do memoization properly in Haskell

type Index = Int

collatz :: Index -> Int
collatz n
  |(n == 1) = 1
  |(n `mod` 2 == 0) = 1 + (collatz $ n `quot` 2)
  |otherwise = 1 + (collatz $ 3 * n + 1)

indexedCollatz :: Index -> (Index,Int)
indexedCollatz n = (n, collatz n)

indexedMax :: (Index,Int)->(Index,Int)-> (Index,Int)
indexedMax (j,a) (k,b)
  |a > b  = (j,a)
  |otherwise = (k,b)

main = putStrLn (show answer)
       where answer = foldl indexedMax (0,0) $ map indexedCollatz [1..1000000]
