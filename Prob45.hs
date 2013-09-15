trinums = [n*(n+1) `quot` 2 | n<-[286..]]
pentnums = [n*(3*n-1) `quot` 2 | n<-[166..]]
hexnums = [n*(2*n-1) | n<-[144..]]

nextMatch :: [Int]->[Int]->[Int]->Int
nextMatch (x:xs) (y:ys) (z:zs)
  |(x==y) && (y==z) = x
  |(x==(min x (min y z))) = nextMatch xs (y:ys) (z:zs)
  |(y==(min x (min y z))) = nextMatch (x:xs) ys (z:zs)
  |(z==(min x (min y z))) = nextMatch (x:xs) (y:ys) zs

main = putStrLn $ show $ nextMatch trinums pentnums hexnums
