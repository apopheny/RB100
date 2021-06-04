# Only Even

# Using next, modify the code below so that it only prints even numbers.

number = 0

until number == 10
  number += 1
  if number.even? == true
    puts number
  else
    next #this is such a meaningless else
  end
end

=begin
Solution

number = 0

until number == 10
  number += 1
  next if number.odd?
  puts number
end

Discussion

Sometimes when using a loop, you need to skip to the next iteration. That's where next comes in. next lets you skip to the next iteration based on certain conditions. In this exercise, we use next to skip to the next iteration when number is odd. We can use the method Integer#odd? to evaluate number and return true if it's an odd number.
Further Exploration

Why did next have to be placed after the incrementation of number and before #puts? (Because if it were before the number incrementation it would have affected nothing. if it had been after puts all numbers would have been. ... After running it, next before number just hangs the program, probably because it it trying to move onto the next iteration without any arguments.)
=end