# • Leap years. Write a program that asks for a starting year and an ending year and then prints all the leap years between them (and including them, if they are also leap years). Leap years are years divisible by 4 (like 1984 and 2004). But years divisible by 100 are not leap years (such as 1800 and 1900) unless they are also divisible by 400 (such as 1600 and 2000, which were in fact leap years). What a mess.

def is_leap_year(year)
  year % 4 == 0 && year % 100 != 0 || year % 400 == 0
end

puts "What is your starting year?"
starting_year = gets.chomp.to_i
puts "And what is your ending year?"
ending_year = gets.chomp.to_i

if starting_year > ending_year
  puts "Your starting year must be before your ending year"
  puts "What is your starting year?"
  starting_year = gets.chomp.to_i
  puts "And what is your ending year?"
  ending_year = gets.chomp.to_i
end

all_years = (starting_year..ending_year).to_a

leap_years = all_years.select do |isleap|
  is_leap_year(isleap)
end

puts "These are the leap years between the years you've entered:"
puts leap_years
