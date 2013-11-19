def special_number(n)
  return 1 unless n % 3 == 1
  return 2*(n/3 + 1)
end


def iterant(n)
  num = 0.rationalize
  (n-1).downto(0) do |k|
    num = 1/(special_number(k) + num)
  end
  return 2 + num
end
