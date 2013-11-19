require 'prime.rb'

prime_array = []

Prime.each(500000) do |prime|
  prime_array << prime
end

p prime_array.length

record = 1
best = [] 
prime_array.each_index do |index1|
  prime_array.each_index do |index2|
    next if ((index2 - index1 + 1) <= record)
    sum = prime_array[index1..index2].inject(:+)
    if sum > 1000000
      index2 = prime_array.length
      next
    end
    if Prime.prime?(sum)
      record =  (index2 - index1 + 1)
      best = prime_array[index1..index2]
      p "#{record} is Record length"
      p "Sum is #{sum}"
    end
  end
end

p record
p best
p best.inject(:+)
