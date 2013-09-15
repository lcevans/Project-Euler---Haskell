n = 50

redways = [0,0,1]
for k in (3..n) do
  newways = 0
  for j in (0..k-2) do
    newways += (redways[k-j-2]+1)
  end
  redways << newways
end

greenways = [0,0,0,1]
for k in (4..n) do
  newways = 0
  for j in (0..k-3) do
    newways += (greenways[k-j-3]+1)
  end
  greenways << newways
end

blueways = [0,0,0,0,1]
for k in (5..n) do
  newways = 0
  for j in (0..k-4) do
    newways += (blueways[k-j-4]+1)
  end
  blueways << newways
end

p redways[50]+ greenways[50]+ blueways[50]

