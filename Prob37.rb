require 'prime'

def istrunctable_rtol(n)
  if n/10 == 0 then
    return Prime.prime?(n)
  else
    return (Prime.prime?(n) and istrunctable_rtol(n/10))
  end
end

def istrunctable_ltor(n)
  if n/10 == 0 then
    return Prime.prime?(n)
  else
    return (Prime.prime?(n) and istrunctable_ltor(n.to_s[1..-1].to_i))
  end
end

sum = 0
count = 0

Prime.each do |p|
  if (istrunctable_ltor(p) and istrunctable_rtol(p)) then
    sum += p
    count += 1
  end
  break if count == 15
end

puts (sum-2-3-5-7)

