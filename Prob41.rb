require 'prime'

def findpandigitalprime 
  array = [1,2,3,4,5,6,7]
  max = 0
  for perm in array.permutation do
    p perm
    if Prime.prime?(perm.join.to_i) then
      max = [max,perm.join.to_i].max
    end
  end
  return max
end

p findpandigitalprime
