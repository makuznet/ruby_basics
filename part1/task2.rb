print "Hi, there! To get triangle area please provide its Base in cm: "
base = gets.chomp.to_f.round(2)
print "and its Height: "
height = gets.chomp.to_f.round(2)
area = (height * base * 0.5).round(2)
puts "Triangle area is #{area} cm2"
