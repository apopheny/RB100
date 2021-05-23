#Write a program that takes a number from the user between 0 and 100 and reports back whether the number is between 0 and 50, 51 and 100, or above 100.

puts "Pick a number 0-100"
a = gets.chomp.to_i

def curve(a)
  if a <= 50
    puts "Your number is between 0-50"
  elsif a <= 100
    puts "Your number is between 51-100"
  else
    puts "Your number is above 100"
  end
end

curve(a)