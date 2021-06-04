# Stop Counting

# The method below counts from 0 to 4. Modify the block so that it prints the current number and stops iterating when the current number equals 2.

5.times do |index| 
  puts index
break if index == 2
end

=begin
Solution

5.times do |index|
  puts index
  break if index == 2
end

Discussion

The times method counts from 0 to one less than the specified number. In this case, that number is 5. The block parameter index represents the current iteration number. We can print the current number with puts index.

To stop the loop, we can simply add break. However, we want to only stop iterating when the current number equals 2. We can do this by adding the if index == 2 condition to break.
Further Exploration

Without running this code, how many values will be printed? (5. 0..4)

5.times do |index|
  puts index
  break if index == 4
end

Now, consider this code:

5.times do |index|
  puts index
  break if index < 7
end

How many values will be printed this time? (1: 0.)
=end