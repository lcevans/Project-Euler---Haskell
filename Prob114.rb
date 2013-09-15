n = 168
m = 50

ways = [1]*m
for k in (m..n) do
  toadd = 1
  for j in (0..k-(m+1)) do
    toadd += ways[j]
  end
  toadd += ways[k-1]
  ways << toadd
#  ways << 1 + ways.inject(0){|a,v| a+v}
end

p ways[-1]
