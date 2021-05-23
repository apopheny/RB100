=begin
Write a program that uses a hash to store a list of movie titles with the year they came out. Then use the puts command to make your program print out the year of each movie to the screen. The output for your program should look something like this.

1975
2004
2013
2001
1981
=end
movies = {:Matrix => 1999, :LOTR => 1999, :Top_Gun => 1985}

movies.each {|key, value| puts "#{key} might have come out in #{value} idk" }


=begin
thousands = 4936 / 1000
hundreds = 4936 % 1000 / 100
tens = 4936 % 1000 % 100 / 10
ones = 4936 % 1000 % 100 % 10
=end