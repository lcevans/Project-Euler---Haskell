require 'prime.rb'

num = 1
offset = 0
count = 0
total = 0
flagged = false
while true
  offset += 2
  4.times do
    num += offset
    total += 1
    count += 1 if Prime.prime?(num)
  end
  p count/total.to_f
  break if 10 * count < total
end
p "*****"
p num
p Math.sqrt(num)
