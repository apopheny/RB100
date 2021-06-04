# Dividing Numbers

# Write a program that obtains two Integers from the user, then prints the results of dividing the first by the second. The second number must not be 0, and both numbers should be validated using this method:

def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

puts ">> Please enter the numerator:"
numerator = gets.chomp.to_s
puts ">> Please enter the denominator"
denominator = gets.chomp.to_s

division = nil

loop do
  if valid_number?(numerator) == false || valid_number?(denominator) == false
    puts "Invalid input. Only integers are allowed."
    puts ">> Please enter the numerator:"
    numerator = gets.chomp.to_s
    puts ">> Please enter the denominator"
    denominator = gets.chomp.to_s
  elsif denominator == "0"
    puts "Invalid input. A denominator of 0 is not allowed."
    puts ">> Please enter the numerator:"
    numerator = gets.chomp.to_s
    puts ">> Please enter the denominator"
    denominator = gets.chomp.to_s
  else
    division = numerator.to_i / denominator.to_i
    puts "#{numerator} / #{denominator} is #{division}"
    break
  end
end

# This method returns true if the input string can be converted to an Integer and back to a string without loss of information, false otherwise. It's not a perfect solution in that some inputs that are otherwise valid (such as 003) will fail, but it is sufficient for this exercise.

# Examples:

# $ ruby division.rb
# >> Please enter the numerator:
# 8
# >> Please enter the denominator:
# 2
# >> 8 / 2 is 4

# $ ruby division.rb
# >> Please enter the numerator:
# 8.3
# >> Invalid input. Only integers are allowed.
# >> Please enter the numerator:
# 9
# >> Please enter the denominator:
# 4
# >> 9 / 4 is 2


# $ ruby division.rb
# >> Please enter the numerator:
# 10
# >> Please enter the denominator:
# a
# >> Invalid input. Only integers are allowed.
# >> Please enter the denominator:
# 0
# >> Invalid input. A denominator of 0 is not allowed.
# >> Please enter the denominator:
# 5
# >> 10 / 5 is 2

=begin
Solution

def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

numerator = nil
loop do
  puts '>> Please enter the numerator:'
  numerator = gets.chomp

  break if valid_number?(numerator)
  puts '>> Invalid input. Only integers are allowed.'
end

denominator = nil
loop do
  puts '>> Please enter the denominator:'
  denominator = gets.chomp

  if denominator == '0'
    puts '>> Invalid input. A denominator of 0 is not allowed.'
  else
    break if valid_number?(denominator)
    puts '>> Invalid input. Only integers are allowed.'
  end
end

result = numerator.to_i / denominator.to_i
puts "#{numerator} / #{denominator} is #{result}"

Discussion

In this exercise, we solicit two pieces of independent information, so we need separate loops for each number. The first should look reasonably familiar by now, but the second is a bit more complex due to the additional requirement that the denominator not be 0. There are a number of different ways to do this; we just chose a way that we feel is reasonably clear.

In our last two lines, we convert the two inputs to integers, divide them, and then print the result. Note that we are doing integer division, so 9 / 4 is 2, not 2.25.
=end