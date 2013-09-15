def palindrome(string)
  return string == string.reverse
end

def tobasetworev(n)
  output = []
  until n == 0 do
    output << n % 2
    n /= 2
  end
  return output
end

def palinboth(n)
  return (palindrome(n.to_s) and palindrome(tobasetworev(n).join))
end

sum = 0
for n in (1...1000000) do
  if palinboth(n) then
    puts "#{n} <-> #{tobasetworev(n).reverse.join}"
    sum += n
  end
end

puts sum
#puts "***"


#for n in (1..16) do
#  p tobasetworev(n)
#end
