# Print Until

# Given the array of several numbers below, use an until loop to print each number.

numbers = [7, 9, 13, 25, 18]

until numbers.size == 0
  puts numbers.shift
end
# Expected output:

# 7
# 9
# 13
# 25
# 18


=begin
count = 0

until count == numbers.size
  puts numbers[count]
  count += 1
end

This is likely a better solution in that it does not destroy the array.

Discussion

There are multiple ways we could have used until to accomplish this task. Our solution uses a counter variable to track the current iteration number. This number gets incremented upon each iteration.

Using count helps us in two ways. First, it lets us control the number of iterations. In this case, we want to stop iterating when count equals the length of numbers. Second, we use it to select the next value in the array. This works because count matches the index of each number we want to print.
=end