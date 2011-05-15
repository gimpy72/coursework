#Leap Year
puts 'Pick a starting year, any year (like 1972 or something)'
s_yr = gets.chomp.to_i

puts 'Pick an ending year'
e_yr = gets.chomp.to_i

puts "Here are all the leap year in those groups:"

yr = s_yr
while yr <= e_yr
	if yr%4 == 0
		if yr%100 != 0 || yr%400 == 0
			puts yr
		end
	end
	yr = yr + 1
end