# deaf granny
puts "COME HERE KID, GIVE GRANNY SOME LOVIN\'"

while true
  said = gets.chomp
  if said == "BYE"
    puts "BYE SWEET CHEEKS"
    break
  end
  if said != said.upcase
  	puts 'HUH? SPEAK UP, SONNY!'
  else
	r_year = 1930 + rand(21)
	puts 'NO, NOT SINCE ' + r_year.to_s + "!"
  end
end