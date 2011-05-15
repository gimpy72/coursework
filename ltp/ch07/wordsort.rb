# word count program
puts "Enter some words and I will put them in alphabetical order (press enter after every word):"
words = []

while true
	word = gets.chomp
	if word == ''
	break
	end

	words.push word
end

puts 'Awesome, here are your sorted words:'
puts words.sort