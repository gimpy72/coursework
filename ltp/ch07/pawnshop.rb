#pawn shop exercise for week 2
title = 'Welcome to Cling and Clatter Pawn Shop'
shopname = 'Cling and Clatter Pawn Shop'
#stock array and setup
stock = [['1977 Apple II', 80],
		['Baseball signed by Babe Ruth', 50],
		['1974 game Oregon Trail', 10],
		['Louisville Slugger owned by Babe Ruth', 500],
		['Complete set of Superman comic books', 500],
		['Original IBM Model M keyboard', 15],
		['Chris Pine\'s Learning to Program', 20],
		['Leaked pre-release iPhone 5', 5000]]
items = []
items.replace(stock)
cart = []
puts ' '
inputChoice = ' '
total = 0

  while true
	  #list items for sale
	  puts title.center(50)
	  puts ' '
	  i = 0
	  j = 0 
	  if items.length == 0
		  puts 'Nothing to be sold today, please come again'
	  end
	  puts ' '
	  while i < items.length
		  puts (i+1).to_s + '. ' + items[i][0].ljust(40) + "$#{items[i][1]}".to_s.rjust(10)
		  i = i + 1
	  end
	  puts
	  puts 'Your shopping cart:'
	  puts
	if cart.length == 0
		puts 'You have nothing in your cart.'
	end
	while j < cart.length
		puts (j+1).to_s + '. ' + cart[j][0].ljust(40) + "$#{cart[j][1]}".to_s.rjust(10)
		j = j + 1
	end

	#Adding stuff to cart
	puts '-----'.rjust(55)
	puts 'Subtotal:'.ljust(50) + "$#{total}".to_s.rjust(5)
	puts
	puts 'Select an item # to add to your cart.'
	puts 'Enter more items or press any other key to continue:'
	inputChoice = gets.chomp.to_i.abs
	if inputChoice ==  0
		break
	elsif inputChoice > items.length
		puts
		puts
		puts
		puts '----------------------------'
		puts 'Sorry, there is no item #' + inputChoice.to_s
		puts '----------------------------'
	elsif inputChoice <= items.length
		total = total + items[(inputChoice - 1)][1]
		cart.push items[(inputChoice - 1)]
		items.delete(items[(inputChoice - 1)])
	end
end

#Sale complete
puts 'Thank you for shopping at ' + shopname + '!'
puts 'See cart items and subtotal above.'
puts

#discounts
bundleCounter = 0
cart.each do |item|
	if item.index("1977 Apple II") != nil or item.index("1974 game Oregon Trail") != nil
		bundleCounter = bundleCounter + 1
	end
end
if cart.length  >= 3
	puts 'Discount: 3 + items! (5% off order)'
	total = total - (0.05 * total)
end
if bundleCounter == 2
	puts 'Discount: Apple II and Oregon Trail (10% off)'
	total = total - (0.1 * (stock[0][1] + stock[2][1]))
end
puts '========'.rjust(55)
puts "Grand total: $#{total.round(2)}".rjust(55)

#inventory updated
stock.replace(items)
