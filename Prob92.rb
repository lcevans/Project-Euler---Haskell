def iterate(num)
  digits = num.to_s.split("").map(&:to_i)
  digits.map! { |x| x * x}
  digits.inject(:+)
end

count = 0
ones = {"1" => true}
eighty_nines = {"89" => true}
chain = []

(2...10_000_000).each do |num|
  p num if num % 10000 == 0
  until ones[num.to_s] || eighty_nines[num.to_s]
    chain << num
    num = iterate(num)
  end
  if ones[num.to_s]
    chain.each {|el| ones[el.to_s] = true if el < 10_000_000}
  elsif eighty_nines[num.to_s]
    count += 1
    chain.each {|el| eighty_nines[el.to_s] = true if el < 10_000_000}
  else
    p "huh"
  end
  chain = []
end
p "Count is"
p count
