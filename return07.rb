# Counting Sheep (Part 1)

# What will the following code print? Why? Don't run it until you've attempted to answer.

def count_sheep
  5.times do |sheep|
    puts sheep
  end
end

puts count_sheep

# It will cause some sort of error as sheep that it tries to put has no printable value. It's a variable with nothing passed to it.

# Well, I was wrong. It counted to 5.

# Per documentation about the times method: Iterates the given block int times, passing in values from zero to int - 1. At the end it also returns the initial integer, although this isn't mentioned on the integer class documentation.

# This was a problem of not understanding the method.

=begin
Solution

0
1
2
3
4
5

Discussion

We're using Integer#times within the count_sheep method to count from 0 to 4 (#times starts at 0). Therefore, it's no surprise that the output includes 0 through 4. What may be surprising, however, is the fact that the output includes 5. Where did that 5 come from? If you study #times in the Ruby docs, you'll know that after iterating 5 times, the block returns the initial integer. Which, in this case, is 5.

We can use this knowledge combined with what we learned from the previous exercises to determine why 5 was printed. When looking at count_sheep we can see that the #times block is the only code in the method. This means it's also the last line in the method. Since #times returns the initial integer, we now know that the return value of count_sheep is 5.
=end