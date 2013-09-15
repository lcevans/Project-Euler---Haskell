def abundant?(n)
  divsum = 0
  for k in (1..n-1)
    divsum += k if n%k == 0
    return true if divsum > n
  end
  return false
end

abundantnums = (1..123).to_a.select{|x| abundant?(x)}


for 
