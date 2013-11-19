def digits(num)
  return num.to_s.length
end


total = 0

(1..9).each do |base|
  k = 0
  while true
    k += 1
    break if digits(base ** k) < k
  end
  total += k - 1
end

p total
