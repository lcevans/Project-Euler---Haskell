numSolns :: Int -> Int
numSolns p = length [(a,b,c)|a<-[1..p],b<-[a..p],c<-[b..p],(a+b+c)==p,(a^2+b^2) == c^2 ]

ptriples = [a+b+c|b<-[1..30],a<-[1..b],c<-[b..(a+b)],(a^2+b^2) == c^2 ]

answer = foldl lcm 1 [12,30,40,70,56]

main = putStrLn $ show $ answer

neat = [12,30,40,70,56,84,126] --perimiters of unique triples. The lcm of these should be good!

