abundant :: Int -> Bool
abundant n = (<) n $ foldl (\a k -> if (n `mod` k == 0) then a + k else a) 0 [1..n-1]

abundantnums = filter abundant [1..28123]
abundantsums = [x+y|x<-abundantnums, y<-abundantnums]

answer = filter (\x -> x `notElem` abundantsums) [1..28123]

main = putStrLn $ show $ sum answer
