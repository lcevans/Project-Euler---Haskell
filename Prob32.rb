def pandigital(a,b,prod)
  adig = a.to_s.chars.map{|x| x.to_i}
  bdig = b.to_s.chars.map{|x| x.to_i}
  pdig = prod.to_s.chars.map{|x| x.to_i}
  return true if (adig & bdig == []) and (bdig & pdig == []) and (adig & pdig == []) and (adig+bdig+pdig).sort == (1..9).to_a
  return false
end

sum = 0
for a in (1..1000)
  for b in ((a+1)..10000)
    puts [a,b,a*b].inspect if pandigital(a,b,a*b)
#    sum += a*b if pandigital(a,b,a*b)
  end
end
puts sum
