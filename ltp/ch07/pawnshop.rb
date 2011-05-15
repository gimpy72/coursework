#pawn shop exercise for week 2
title = 'Welcome to Cling and Clatter Pawn Shop'

stock = [['1977 Apple II', '$80', 1],
		['Baseball signed by Babe Ruth', '$50', 1],
		['1974 game Oregon Trail', '$10', 1],
		['Louisville Slugger owned by Babe Ruth', "$500", 1],
		['Complete set of Superman comic books', '$500', 1],
		['Original IBM Model M keyboard', '$15', 1],
		['Paper copy of Chris Pine\'s Learning to Program book', '$20', 1],
		['Leaked pre-release iPhone 5', '$5000', 1]]

puts ' '
puts title.center(50)
puts ' '

pawn_num = 1

	beginning = 'QTY ' 
	middle = 'ITEM'
	ending = 'PRICE'

	puts beginning.ljust(5) + middle.ljust(25) + ending.rjust(20)

stock.each do |items|
	item = items[0]
	price = items[1]
	qty = items[2]

	qty = qty.to_i
	item = item
	price = price.to_i

puts qty, + item
	#pawn_num = pawn_num + 1
end