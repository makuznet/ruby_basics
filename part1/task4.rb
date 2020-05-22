#!/usr/bin/ruby
puts "Let's solve quadratic equation, shall we?"
print "Give me please a, b, c: " 
input = gets.chomp
=begin
.split creates an array of strings out of one input string
.map! rewrites elements to integers; &:to_i is another way to pass and argument to .map
=end
abc = input.split(",").map! { |a| a.to_i }
d = abc[1]**2 - 4 * abc[0] * abc[2] # calculating the discriminant
if d < 0
  puts "d = #{d} No roots!"
elsif d == 0
  x = -abc[1] / 2 * abc[0]
  puts "d = 0  x = #{x}"
else
  x1 = (-abc[1] + Math.sqrt(d)) / 2 * abc[0]
  x2 = (-abc[1] - Math.sqrt(d)) / 2 * abc[0]
  puts "d = #{d} x1 = #{x1}, x2 = #{x2}"
end

