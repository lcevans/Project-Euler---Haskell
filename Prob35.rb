require 'prime'

def circularprime(n)
  string = n.to_s
  for k in (0...string.length) do
    return false unless Prime.prime?((string[k..-1]+string[0...k]).to_i)
  end
  return true
end

count = 0

for k in (1...1000000) do
  count += 1 if circularprime(k)
end

puts count
