#!/usr/bin/ruby
# frozen_string_literal: true

puts 'Populating the array from 10 to 100 with a factor of 5'

array = [] # announcing an empty array
element = 10 # an array value

until element > 100
  array.push(element)
  element += 5 # factor of 5
end

print "#{array} \n" # \n -- end of line
