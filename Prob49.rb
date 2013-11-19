require 'prime.rb'

def same_digits?(num1,num2,num3)
  dig1 = num1.to_s.split("").map(&:to_i)
  dig2 = num2.to_s.split("").map(&:to_i)
  dig3 = num3.to_s.split("").map(&:to_i)
  return (dig1.sort == dig2.sort) && (dig1.sort == dig3.sort)
end


Prime.each(9999) do |prime|
  (1..2250).each do |k|
    if Prime.prime?(prime + 2*k) && Prime.prime?(prime + 4*k)
      if same_digits?(prime,prime + 2*k, prime + 4*k)
        p [prime,prime + 2*k, prime + 4*k]
      end
    end
  end
end
