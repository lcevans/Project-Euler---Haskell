input = 1000000-1

array = [0,1,2,3,4,5,6,7,8,9]

number = []

def factorial(n)
  return 1 if n == 0
  return n*factorial(n-1)
end

until array.empty?
  puts array.inspect
  todelete = input/factorial(array.length-1)
  p todelete
  input = input % factorial(array.length-1)
  nextnumber = array[todelete]
  array.delete_at(todelete)
  number << nextnumber
end

print number.join("")
