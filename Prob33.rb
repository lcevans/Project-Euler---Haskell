def testfraction(num,denom)
  fakenum = num.to_s.chars.map{|x| x.to_i}
  fakedenom = denom.to_s.chars.map{|x| x.to_i}
  intersection = fakenum & fakedenom
  return false if intersection.empty?
  return false if intersection.include?(0)
  fakenum -= intersection
  fakedenom -= intersection
  fakenum = fakenum.join.to_i
  fakedenom = fakedenom.join.to_i
  return fakenum*denom  == fakedenom*num
end

for i in (10..99)
  for j in ((i+1)..99)
    puts [i,j].inspect if testfraction(i,j)
  end
end
