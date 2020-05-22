#!/usr/bin/ruby 
print "Hi, there! To know your ideal weight name yourself please: "
name = gets.chomp # supposed to be a string, .chomp removes special symbols
print "and reveal your height in cm: "
height = gets.chomp.to_f.round(2) # .to_f converts input to a decimal number; .round leaves two decimals
if 0 > ideal = ((height - 110.0) * 1.15).to_f.round(2) # calculating weight formula
  puts "Congrats! You've got an ideal weight!"
else
  puts "Your ideal weight is #{ideal} kg"
end
