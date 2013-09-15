
numberToWord :: Int -> String
numberToWord 1 = "one"
numberToWord 2 = "two"
numberToWord 3 = "three"
numberToWord 4 = "four"
numberToWord 5 = "five"
numberToWord 6 = "six"
numberToWord 7 = "seven"
numberToWord 8 = "eight"
numberToWord 9 = "nine"
numberToWord 10 = "ten"
numberToWord 11 = "eleven"
numberToWord 12 = "twelve"
numberToWord 13 = "thirteen"
numberToWord 14 = "fourteen"
numberToWord 15 = "fifteen"
numberToWord 16 = "sixteen"
numberToWord 17 = "seventeen"
numberToWord 18 = "eighteen"
numberToWord 19 = "nineteen"
numberToWord 20 = "twenty"
numberToWord 30 = "thirty"
numberToWord 40 = "forty"
numberToWord 50 = "fifty"
numberToWord 60 = "sixty"
numberToWord 70 = "seventy"
numberToWord 80 = "eighty"
numberToWord 90 = "ninety"
numberToWord 100 = "onehundred"
numberToWord 200 = "twohundred"
numberToWord 300 = "threehundred"
numberToWord 400 = "fourhundred"
numberToWord 500 = "fivehundred"
numberToWord 600 = "sixhundred"
numberToWord 700 = "sevenhundred"
numberToWord 800 = "eighthundred"
numberToWord 900 = "ninehundred"
numberToWord 1000 = "onethousand"
numberToWord n
  |n == (n `mod` 100) = (numberToWord tens) ++ (numberToWord ones)
  |n == (n `mod` 1000) = (numberToWord hundreds) ++ "and" ++ (numberToWord (tens+ones))
    where ones = n `mod` 10
          tens = (n `mod` 100) - ones
          hundreds = (n `mod` 1000) - tens - ones

answer = sum $ map (length.numberToWord) [1..1000]

          
main = putStrLn $ show $ answer










