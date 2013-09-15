wins = 0
games = 0

printcounter = 0
while true do
  printcounter += 1
  bag = [0,1] # 0 = red, 1 = blue
  blue_count = 0
  red_count = 0
  15.times do
    todraw = Random.rand(bag.length)
    drawn = bag[todraw]
    red_count += 1 if drawn == 0
    blue_count += 1 if drawn == 1
    bag << 0
  end
  wins += 1 if blue_count > red_count
  games += 1
  if printcounter > 1000000 then
    puts games.to_f/wins.to_f
    printcounter = 0
  end
end
