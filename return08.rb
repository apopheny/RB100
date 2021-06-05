# Counting Sheep (Part 2)

# What will the following code print? Why? Don't run it until you've attempted to answer.

def count_sheep
  5.times do |sheep|
    puts sheep
  end
  10
end

puts count_sheep

# it will count 0..5 and then finish with the 10 that is returned by the method.

# Wrong, it counts only to 4 before moving onto the 10 return value. So the times method returns the initial integer, but it doesn't necessarily do with it the same thing it loops through x times. If you're putting it and it is the last line it will print, but in this case it is replaced by the 10 that is returned as the last line of code executed.

=begin
Solution

0
1
2
3
4
10

Discussion

This exercise continues the previous exercise, except with one variation: Integer#times is no longer the last line in count_sheep. #times still returns the initial integer, but this time nothing is done with the return value. Instead, 10 is the implicit return value of count_sheep because it's the last line evaluated.
=end