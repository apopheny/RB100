=begin
Write a program that takes a number from the user between 0 and 100 and reports back whether the number is between 0 and 50, 51 and 100, or above 100.
=end

def range_guesser(user_number)
  if 
    user_number < 0
    puts "Put an integer, maaaan"
  elsif
    user_number <= 50
    puts "Your number is between 0 and 50. I am a computer and I am very smart with numbers."
  elsif
    user_number.between?(50, 100)
    puts "Your number is between 50 and 100. I am a computer and I am very smart with numbers."
  else 
    user_number > 100
    puts "Your number is between 101 and infinity. I am a computer and I am very smart with numbers."
  end
end 

puts "Gimme a number"
user_number = gets.chomp.to_i
range_guesser(user_number)

# I had to look up the between operator wtf. There has to be a simpler way.

=begin

puts "Please enter a number between 0 and 100."
number = gets.chomp.to_i

if number < 0
  puts "You can't enter a negative number!"
elsif number <= 50
  puts "#{number} is between 0 and 50"
elsif number <= 100
  puts "#{number} is between 51 and 100"
else
  puts "#{number} is above 100"
end

I guess this is a simpler way, and it evaluates correctly given the order in which it evaluates, but I still don't like it.
=end