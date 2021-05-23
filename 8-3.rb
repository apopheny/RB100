# Using some of Ruby's built-in Hash methods, write a program that loops through a hash and prints all of the keys. Then write a program that does the same thing except printing the values. Finally, write a program that prints both.

h1 = { pizza: 1, burgers: 2, tacos: 3, fries: 4, alpo: 599}

h1.each_key { |k| puts k }
h1.each_value { |v| puts v }
h1.each { |key, value| puts "#{key} is #{value}!" }

=begin 
opposites = {positive: "negative", up: "down", right: "left"}

opposites.each_key { |key| puts key }
opposites.each_value { |value| puts value }
opposites.each { |key, value| puts "The opposite of #{key} is #{value}" }
=end