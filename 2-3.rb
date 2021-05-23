=begin
Modify name.rb again so that it first asks the user for their first name, saves it into a variable, and then does the same for the last name. Then outputs their full name all at once.
=end

puts "And, now, how old'dja be?"
age = gets.chomp.to_i
puts "Well, in 10 years you'll be #{age + 10}, unless you're dead, in which case your decaying corpse will be #{age + 10}."
puts "Well, in 20 years you'll be #{age + 20}, unless you're dead, in which case your decaying corpse will be #{age + 20}."
puts "Well, in 30 years you'll be #{age + 30}, unless you're dead, in which case your decaying corpse will be #{age + 30}."
puts "Well, in 40 years you'll be #{age + 40}, unless you're dead, in which case your decaying corpse will be #{age + 40}."

puts "And, now, what's yer first name?"
first_name = gets.chomp.to_s
puts "And yer last?"
last_name = gets.chomp.to_s
puts "And yer social security number?"
joke = gets.chomp.to_i
puts "I was just kidding! Don't worry, I've forgotten it already. Anyway..."
10.times { puts "HAHAHAHAHA YOUR NAME IS #{first_name.upcase} #{last_name.upcase} AND YOU'RE GONNA DIE!" }
=begin
puts "How old are you?"
age = gets.chomp.to_i
puts "In 10 years you will be:"
puts age +  10
puts "In 20 years you will be:"
puts age +  20
puts "In 30 years you will be:"
puts age +  30
puts "In 40 years you will be:"
puts age +  40

10.times do
  puts name
end

puts "What is your first name?"
first_name = gets.chomp
puts "Thank you. What is your last name?"
last_name = gets.chomp
puts "Great. So your full name is " + first_name + " " + last_name
=end