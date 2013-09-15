require 'prime'


def numprimes(a,b)
  count = 0
  n = 0
  while Prime.prime?(n*n + a*n + b) do
    count += 1
    n += 1
  end
  return count
end


besta = nil
bestb = nil
maxsofar = 0

for a in (-999..999) do
  for b in (-999..999) do
    test = numprimes(a,b)
    if test > maxsofar then
      besta = a
      bestb = b
      maxsofar = test
      puts maxsofar
    end
  end
end

puts "a = #{besta} and b = #{bestb} yield #{maxsofar}"
