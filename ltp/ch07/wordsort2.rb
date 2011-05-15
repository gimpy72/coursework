# word count program without sort
puts 'How many words are we going to sort today?'
n_word = gets.chomp.to_i
arr =[]
n_word.times do |words|
	puts 'Enter a word:'
	words = gets.chomp.downcase
	arr.push(words)
end
puts 'Awesome, here are your sorted words:'
def sort(sequence)
  sequence[1..sequence.size].each_with_index do |j, index|
      i = index
		sequence[0..i].reverse.each do |k|
		break unless k > j
			sequence[i + 1] = k
			i = i - 1
		end
		sequence[i+1] = j
	end
end
sort(arr)
puts arr.join(', ')
