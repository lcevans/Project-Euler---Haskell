def pandigital(k,arr)
  numb = arr.map{|x| x*k}.join
  return nil unless numb.length == 9
  return numb.to_i if numb.chars.sort == ["1","2","3","4","5","6","7","8","9"]
  return nil
end


best = 0
bestk = 0
bestn = 0

for k in (1..99999) do
  for n in (1..9) do
    test = pandigital(k,(1..n).to_a)
    if test and test > best then
      best = test
      bestk = k
      bestn = n
    end
  end
end

puts "k = #{bestk} and n = #{bestn} yield #{best}"
