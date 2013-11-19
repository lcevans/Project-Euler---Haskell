
def iterate_it(num)
  return num + num.to_s.reverse.to_i
end

def palindrome?(num)
  return num.to_s == num.to_s.reverse
end

def lychrel?(num)
  50.times do 
    num = iterate_it(num)
    return false if palindrome?(num)
  end
  true
end


count = 0
(1...10000).each do |num|
  count += 1 if lychrel?(num)
end

p count
