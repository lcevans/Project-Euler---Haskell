def digit_check(n)
  digits = n.to_s.split("").map(&:to_i)
  if (digits.values_at(0,2,4,6,8,10,12,14,16,18) == [1,2,3,4,5,6,7,8,9,0])
    return true
  end
  false
end

101_000_000.upto(140_000_000) do |num|
  puts num if num % 1000000 == 0
  p "The number is #{10 * num}" if digit_check((10*num) ** 2)
end
