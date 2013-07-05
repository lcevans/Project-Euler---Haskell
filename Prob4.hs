isPalindrome :: Int -> Bool
isPalindrome n = (show n) == reverse (show n)

myMax :: [Int] -> Int
myMax [] = minBound
myMax (x:xs) = max x (myMax xs)

main = putStrLn (show output)
       where output = myMax (filter isPalindrome [x*y| x<-[999,998..100],y<-[999,998..100]])