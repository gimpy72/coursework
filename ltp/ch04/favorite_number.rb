# Write a program which asks for a person's favorite number. Have your program
# add one to the number, then suggest the result as a bigger and better
# favorite number. (Do be tactful about it, though.)
puts 'What is your favorite number?'
f_num = gets.chomp.to_i
new_num = f_num + 1
puts 'Isn\'t ' + new_num.to_s + ' a better number?'