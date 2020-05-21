side = Array.new #creating a new array, which is going to hold triangle side lengths
puts "Hey! Fancy triangles? Give me please its side lengths in cm!"
print "the first side: "
side[0] = gets.chomp.to_i
print "the second side: "
side[1] = gets.chomp.to_i
print "and the third: "
side[2] = gets.chomp.to_i
side.sort! #sorting the array ascendingly

equil = side[1] - side[0] == 0 && side[2] -  side[1] == 0 # checking if all sides are equal
isosc = side[1] - side[0] == 0 || side[2] - side[1] == 0 # cheking if two sides are equal
rangl = side[2]**2 == side[1]**2 + side[0]**2 # checking for the right angle
if equil == true 
       puts "You've got the equilatteral triangle! It's also the isosceles one!" 	
elsif rangl == true && isosc == true 
       puts "You've got the right-angled triangle! It's also the isosceles one!" 	
elsif rangl == true
       puts "You've got the right-angled triangle!" 	
elsif isosc == true
       puts "You've got the isosceles triangle!" 	
else
       puts "Sorry, kid, there's nothing special about your triangle :(" 	
end
