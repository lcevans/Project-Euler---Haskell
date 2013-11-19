def iterate(num)
  return 1/(2 + num)
end

num = 0.rationalize

count = 0
1000.times do
  num = iterate(num)
  count += 1 if (num.numerator + num.denominator).to_s.length > num.denominator.to_s.length
end

p count
