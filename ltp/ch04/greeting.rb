# Write a program which asks for a person's first name, then middle, then last.
# Finally, it should greet the person using their full name.
# brandy's program
puts 'What is your first name?'
f_name = gets.chomp
puts 'What is your middle name?'
m_name = gets.chomp
puts 'What is your last name?'
l_name = gets.chomp
full_name = f_name + ' ' + m_name + ' ' + l_name
puts 'Hello, ' + full_name + '!'