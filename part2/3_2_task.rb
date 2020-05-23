#!/usr/bin/ruby
puts 'Populating an array with Fibonacci numbers up to 100'
array = [0, 1] # the first and the second Fibonacci numbers are fixed
index = 2 # an array index
element = 0 # Fibonacci number
loop do
  element = array[index - 1] + array[index - 2] # calculaing current Fibonacci number
  if element < 100 # separating calculation from assignment
    array[index] = element
    index += 1
  else
    break
  end
end
print "#{array} \n"
