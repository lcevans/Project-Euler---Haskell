main = putStrLn (show output)
       where output = foldl lcm 1 [1..20]