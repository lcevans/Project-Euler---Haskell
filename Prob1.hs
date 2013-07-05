main = do
       let total = sum([x|x<-[1..999], or [x `mod` 3 == 0, x `mod` 5 == 0]])
       print total