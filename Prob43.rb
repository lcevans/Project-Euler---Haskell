def check(n)
  digits = n.to_s.chars.map{|c| c.to_i}
  return false unless digits.sort == [0,1,2,3,4,5,6,7,8,9]
  return false if digits[1..3].join.to_i % 2 != 0
  return false if digits[2..4].join.to_i % 3 != 0
  return false if digits[3..5].join.to_i % 5 != 0
  return false if digits[4..6].join.to_i % 7 != 0
  return false if digits[5..7].join.to_i % 11 != 0
  return false if digits[6..8].join.to_i % 13 != 0
  return false if digits[7..9].join.to_i % 17 != 0
  return true
end

sum = 0
array = [0,1,2,3,4,5,6,7,8,9]

for a in array.permutation do
  n = a.join.to_i
  p n
  sum += n if check(n)
end

p sum
