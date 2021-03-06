def curious(numb)
  digits = numb.to_s.chars.map{|x| x.to_i}
  sillysum = digits.inject(0){|a,v| a + factorial(v)}
  return sillysum == numb
end

def factorial(n)
  return 1 if n == 0
  return n*factorial(n-1)
end

for k in (3..10000000)
  puts k if curious(k)
end
