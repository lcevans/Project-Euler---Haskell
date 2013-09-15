#triangles


#file = File.open("triangles.txt","r")
#contents = file.read.split()
#p contents
#contents.map!{|l| l.split{","}}
#p contents

file = File.open("triangles.txt", "r")
contents = file.read.chomp
lines = contents.split("\n")
triangles = lines.map{|line| line.split(",").map{|str| str.to_i}}

p triangles

PI = 3.14159265359

def check(arr) 
  anorm = Math.sqrt(arr[0]*arr[0]+arr[1]*arr[1])
  bnorm = Math.sqrt(arr[2]*arr[2]+arr[3]*arr[3])
  cnorm = Math.sqrt(arr[4]*arr[4]+arr[5]*arr[5])
  ang1 = Math.acos((arr[0]*arr[2]+arr[1]*arr[3]).to_f/(anorm*bnorm))
  ang2 = Math.acos((arr[0]*arr[4]+arr[1]*arr[5]).to_f/(anorm*cnorm))
  ang3 = Math.acos((arr[4]*arr[2]+arr[5]*arr[3]).to_f/(cnorm*bnorm))
  return true if (ang1+ang2+ang3) > (2*PI - 0.0001)
  return false
end


count = 0

triangles.each do |triangle|
  count += 1 if check(triangle)
end

puts count

puts check([-340,495,-153,-910,835,-947])
puts check([-175,41,-421,-714,574,-645])
