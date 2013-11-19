def factorial(n)
  return 1 if n == 0
  (1..n).to_a.inject(:*)
end

def iterate(num)
  digits = num.to_s.split("").map(&:to_i)
  digits.map {|d| factorial(d) }.inject(:+)
end


count = 0
(1...1_000_000).each do |num|
  p num if num % 10000 == 0
  chain = []
  until chain.include?(num)
    chain << num
    num = iterate(num)
  end
  count += 1 if chain.length == 60
end

p "Count is"
p count
