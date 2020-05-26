#!/usr/bin/ruby
# frozen_string_literal: true

puts 'Populating an array with Fibonacci numbers up to 100'

array = [0, 1] # the first and the second Fibonacci numbers are fixed
element = 0 # Fibonacci number

loop do
  element = array[-1] + array[-2] # calculating current Fibonacci number
  if element < 100 # separating calculation from assignment
    array.push(element) # adding a number to the array
  else
    break
  end
end

print "#{array} \n"
