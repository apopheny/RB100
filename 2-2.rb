=begin
Write a program called age.rb that asks a user how old they are and then tells them how old they will be in 10, 20, 30 and 40 years. Below is the output for someone 20 years old.
=end

puts "And, now, how old'dja be?"
age = gets.chomp.to_i
puts "Well, in 10 years you'll be #{age + 10}, unless you're dead, in which case your decaying corpse will be #{age + 10}."
puts "Well, in 20 years you'll be #{age + 20}, unless you're dead, in which case your decaying corpse will be #{age + 20}."
puts "Well, in 30 years you'll be #{age + 30}, unless you're dead, in which case your decaying corpse will be #{age + 30}."
puts "Well, in 40 years you'll be #{age + 40}, unless you're dead, in which case your decaying corpse will be #{age + 40}."

puts "And, now, what's yer name?"
name = gets.chomp.to_s
10.times { puts "HAHAHAHAHA YOUR NAME IS #{name.upcase} AND YOU'RE GONNA DIE!" }
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
=end