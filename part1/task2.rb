#!/usr/bin/ruby
print "Hi, there! To get triangle area please provide its Base in cm: "
=begin
.chomp remove special symbols
.to f converts input in to a decimal number
.round cut to two decimals
=end
base = gets.chomp.to_f.round(2) # triangle base
print "and its Height: "
height = gets.chomp.to_f.round(2) # triangle's height
area = (height * base * 0.5).round(2) # calculating the area
puts "Triangle area is #{area} cm2" 
