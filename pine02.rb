# A Few Things to Try
# • Full name greeting. Write a program that asks for a person’s first name,
# then middle name, and then last name. Finally, have the program greet
# the person using their full name.

puts "What's your first name?"
first_name = gets.chomp
puts "What's your middle name?"
middle_name = gets.chomp
puts "What's your last name?"
last_name = gets.chomp
puts "Your full name is #{first_name} #{middle_name} #{last_name}!"

# • Bigger, better favorite number. Write a program that asks for a person’s
# favorite number. Have your program add 1 to the number, and then
# suggest the result as a bigger and better favorite number. (Please be
# tactful about it, though.)

puts "What's your favorite number?"
fav_num = gets.chomp.to_i
puts "Really? But isn't #{fav_num + 1} a better number?"