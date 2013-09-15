n = 50

ways = [0,0]
for k in (2..n) do
  newways = 0
  for j in (0..k) do
    rways = 0
    gways = 0
    bways = 0

    rways = ways[k-j-2] + 1 if k-j-2 >= 0 
    gways = ways[k-j-3] + 1 if k-j-3 >= 0 
    bways = ways[k-j-4] + 1 if k-j-4 >= 0 
    

    newways += rways + gways + bways
  end
  ways << newways
end



p ways[-1]+1
