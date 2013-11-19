cube_counts = Hash.new(0)

num = 0
while true
  num += 1
  sorted_digits = (num ** 3).to_s.split("").sort
  cube_counts[sorted_digits] += 1
  p num if sorted_digits.join("") == "012334556789" 
  if cube_counts[sorted_digits] == 5
    p sorted_digits.join("");
    p num
    break
  end
end
