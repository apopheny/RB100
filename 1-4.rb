=begin
Use the dates from the previous example and store them in an array. Then make your program output the same thing as exercise 3.
=end
movies = {:Matrix => 1999, :LOTR => 1999, :Top_Gun => 1985}
movies_arr = movies.each_value.to_a { |key, val| val }

p movies_arr
=begin
dates = [1975, 2004, 2013, 2001, 1981]

puts dates[0]
puts dates[1]
puts dates[2]
puts dates[3]
puts dates[4]

uhhh I did something way more complicated lol
=end