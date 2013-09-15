

def playgame
  peterscore = 4+ Random.rand(4) +Random.rand(4)+Random.rand(4)+Random.rand(4)
  colinscore = 6 + Random.rand(6) + Random.rand(6) + Random.rand(6) + Random.rand(6) + Random.rand(6) + Random.rand(6)
  return "Peter" if peterscore > colinscore
  return "Colin" if colinscore > peterscore
  return "Draw"
end

games = 0
peterwins = 0
counter = 0

while true  do
  games += 1
  peterwins += 1 if playgame == "Peter"
  counter += 1
  if counter > 100000 then
    puts peterwins.to_f/games.to_f
    counter = 0
  end
end
