def cyclelength(n)
  return cyclelength(n/2) if n % 2 == 0
  return cyclelength(n/5) if n % 5 == 0
  length = 1
  length += 1 until ("9"*length).to_i % n == 0
  return length
end

nums = (1..1000).to_a
nums.map!{|n| [n,cyclelength(n)]}
nums.sort!{|x,y| y[1]<=>x[1]}
puts nums[0]
