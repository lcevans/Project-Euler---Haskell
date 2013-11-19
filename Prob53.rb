# Create Pascal's Triangle

triangle = Array.new(101) { Array.new(101) }
p triangle

count = 0

(1..100).each do |n|
  triangle[n][0] = 1
  triangle[n][n] = 1

  (1...n).each do |k|
    triangle[n][k] = triangle[n-1][k-1] + triangle[n-1][k]
    count += 1 if triangle[n][k] > 1000000
  end
end

p count
