def factorial(n)
  return 1 if n == 0
  return n * factorial(n-1)
end

sum = 0

2.upto(15) do |m|
  toadd = 1
  1.upto(m) do |k|
    toadd *= ((2.0*k)/(m + 1)) ** k
  end
  puts toadd.to_i
  sum += toadd.to_i
end

puts sum
