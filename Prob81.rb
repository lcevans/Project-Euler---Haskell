file = File.open("matrix.txt", "r")
contents = file.read.chomp
lines = contents.split("\n")
matrix = lines.map{|line| line.split(",").map{|str| str.to_i}}


height = matrix.length
width = matrix[0].length

(height+width-2).downto(0) do |k|
  for i in ([0,k-(height-1)].max..[k,width-1].min) do
    j = k-i
    if i < (width -1) and j < (height - 1) then
      matrix[i][j] += [matrix[i+1][j],matrix[i][j+1]].min
    elsif i == (width - 1) and j < (height - 1) then
      matrix[i][j] += matrix[i][j+1]
    elsif i < (width - 1) and j == (height - 1) then
      matrix[i][j] += matrix[i+1][j]
    end
  end
end

p matrix[0][0]
