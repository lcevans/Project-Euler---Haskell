matrix = []

File.open("matrix.txt", "r").each_line do |line|
  matrix << line.strip.split(",").map(&:to_i)
end

SIZE = matrix.length

optimal_matrix = Array.new(SIZE) { Array.new(SIZE)}
transposed_matrix = Array.new(SIZE) { Array.new(SIZE)}

(0..SIZE-1).each do |i|
  (0..SIZE-1).each do |j|
    transposed_matrix[i][j] = matrix[j][i]
  end
end

optimal_matrix[SIZE-1] = transposed_matrix[SIZE-1]


(SIZE-2).downto(0) do |row|
  (0..SIZE-1).each do |col|
    options = []
    (0..SIZE-1).each do |col_option|
      option_value = optimal_matrix[row+1][col_option]
      if col <= col_option
        (col..col_option).each do |moving_col|
          option_value += transposed_matrix[row][moving_col]
        end
      else
        (col_option..col).each do |moving_col|
          option_value += transposed_matrix[row][moving_col]
        end
      end
      options << option_value
    end
    min_option = options.min
    optimal_matrix[row][col] = min_option
  end
end

p optimal_matrix
p optimal_matrix[0].min

