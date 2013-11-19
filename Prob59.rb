class String
 def includes_ascii?() 
   self.include?(/[\x80-\xff]/)
 end
end

def digits
  string = File.read("cipher1.txt")

  digits = string.split(",").map(&:to_i)
end

def cipher_try(a,b,c)
  turn = [a,b,c]
  new_digits = digits.map do |digit|
    new = turn.first^digit
    turn.rotate!
    new
  end
  new_digits.map(&:chr).join("")
end

def ord_to_make(index, letter)
  try = 0
  until (digits[index]^try).chr == letter
    try += 1
  end
  try
end

def auto_find 
  (120..123).each do |a|
    next unless cipher_try(a,1,1)[0] =~ /\w|\s/
    (1..200).each do |b|
      next unless cipher_try(1,b,1)[1] =~ /\w|\s/
      (1..200).each do |c|
        attempt = cipher_try(a,b,c)
        next unless attempt[2] =~ /\w|\s/
        next unless attempt[3] =~ /\w|\s/
        next unless attempt[4] =~ /\w|\s/
        next unless attempt[5] =~ /\w|\s/
        next unless attempt[6] =~ /\w|\s/
        next unless attempt[7] =~ /\w|\s/
        next unless attempt[8] =~ /\w|\s/
        next unless attempt[9] =~ /\w|\s/
        next unless attempt[10] =~ /\w|\s/
        next unless attempt[11] =~ /\w|\s/
        next unless attempt[12] =~ /\w|\s/
        
        p cipher_try(a,b,c)
      end
    end
    p a
  end
end

def answer 
  turn = [103,111,100]
  new_digits = digits.map do |digit|
    new = turn.first^digit
    turn.rotate!
    new
  end
  new_digits.inject(:+)
end
