#!/usr/bin/ruby
puts 'Populating the array from 10 to 100 with a factor of 5'
array = [] # announcing an empty array
index = 0 # an array index
element = 10 # an array value
until element > 100
  array[index] = element
  index += 1
  element += 5 # factor of 5
end
print "#{array} \n" # \n -- end of line
