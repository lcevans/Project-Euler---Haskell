file = File.open("keylog.txt","r")
inputs = file.read.split("\n").uniq
n = inputs.length
p inputs

def subseq(bstr,lstr) 
  bstr.chars.each do |char|
    if lstr[0] == char then
      if lstr.length == 1 then
        return true
      else
        lstr = lstr[1..-1]
      end
    end
  end
  return false
end

for k in (1..999999) do
#  p k
  str = k.to_s
  count = 0
  for testnum in inputs do
    count += 1 if subseq(str,testnum)
  end
  if count == n then
    puts "The answer is #{k}"
    break
  end
end

