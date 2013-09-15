
def good(n)
  if [n.to_s.chars.sort, (2*n).to_s.chars.sort,(3*n).to_s.chars.sort,(4*n).to_s.chars.sort,(5*n).to_s.chars.sort, (6*n).to_s.chars.sort].uniq.length == 1 then
    return true
  else
    return false
  end
end

for k in (1..1000000) do
  p k if good(k)
end
