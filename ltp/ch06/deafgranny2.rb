# deaf granny extended mix
puts "COME HERE KID, GIVE GRANNY SOME LOVIN\'"

while true
  said = gets.chomp
  if said == "BYE"
  	bye_count = bye_count + 1
  else 
	bye_count = 0
  end
  if bye_count >= 3
  	puts "BYE KID"
    break
  end
  if said != said.upcase
  	puts 'HUH? SPEAK UP, SONNY!'
  else
	r_year = 1930 + rand(21)
	puts 'NO, NOT SINCE ' + r_year.to_s + "!"
  end
end