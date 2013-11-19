require 'prime.rb'


def good?(num)
  s = 1
  while num - 2*s^2 > 0
    return false if Prime.prime?(num-2*s^2)
    s += 1
  end
  true
end

num = 6610001
while true
  num += 2
  break if good?(num)
  p num if ((num-1) % 10000 == 0)
end

p "The number you are looking for is:"
p num
