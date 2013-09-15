n = 1000000

squares = [1,4,9]

until (squares[-1]-squares[-3]) > n do
  squares << (2*squares[-1] - squares[-2] + 2)
end

#p squares

count = 0

for i in (0..squares.length-3) do
  for j in (i+2..squares.length-1) do
    break if ((squares[j]-squares[i]) > n) 
    count +=1 if ((j-i)%2 == 0)
  end
end

p count
