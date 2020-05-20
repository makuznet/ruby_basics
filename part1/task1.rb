print "Hi, there! To know your ideal weight name yourself please: "
name = gets.chomp
print "and reveal your height in cm: "
height = gets.chomp.to_f.round(2)
if 0 > ideal = ((height - 110.0) * 1.15).to_f.round(2)
	puts "Congrats! You've got an ideal weight!"
else
	puts "Your ideal weight is #{ideal} kg"
end
