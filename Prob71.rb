

key = 3/7.to_f

best = 0
best_num = nil
best_denom = nil

(8...1_000_000).each do |denom|
  num = (3 * denom)/ 7
  if num/denom.to_f > best && 7 * num != 3 * denom
    best = num/denom.to_f
    best_num = num
    best_denom = denom
  end
end

p "Best is"
p "#{best_num} / #{best_denom}"
