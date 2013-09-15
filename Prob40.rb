
def finddigit(n)
  for k in (1..1000000) do
    n -= k.to_s.chars.length
    if n <= 0 then
      return k.to_s[n-1].to_i
    end
  end 
end

p finddigit(1)*finddigit(10)*finddigit(100)*finddigit(1000)*finddigit(10000)*finddigit(100000)*finddigit(1000000)


