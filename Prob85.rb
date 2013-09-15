bestdist = 99999999
bestm = 0
bestn = 0

for m in (1..9999) do
  for n in (1..9999) do
    test = (m*(m+1)*n*(n+1)-8000000).abs
    if test < bestdist then
      bestdist = test
      bestm = m
      bestn = n
      puts bestdist
    end
  end
end

puts "m = #{bestm} and n = #{bestn} yield dist = #{bestdist}"
