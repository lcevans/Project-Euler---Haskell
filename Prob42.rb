file = File.open("words.txt","r")
text = file.read

trianglenums = (1..1000).to_a.map!{|x| x*(x+1)/2}
words = text.split(",")
words.map!{|word| word[1..-2]}

def wordsum(word)
  pre_dict = ('A'..'Z').to_a.zip((1..26).to_a)
  dict = {}
  pre_dict.each{|keyval| dict[keyval[0]]=keyval[1]}
  wordsum = word.chars.map{|char| dict[char]}.reduce(:+)
  return wordsum
end

total = 0
words.each{|word| total += 1 if trianglenums.include?(wordsum(word))}

puts total
