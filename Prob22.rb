tempdict = ('A'..'Z').to_a.zip((1..26).to_a)
$dict = {}
tempdict.each{|k,v| $dict[k]=v}


namestring = File.read("names.txt")
names = namestring.split(",")
names.map!{|name| name[1..-2]}
names.sort!

def avalue(word)
  return word.chars.map{|x| $dict[x]}.inject(:+)
end

total = 0
names.each_with_index{|name,index| total += avalue(name) * (index+1)}
puts total
