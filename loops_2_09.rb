# First to Five

# The following code increments number_a and number_b by either 0 or 1. loop is used so that the variables can be incremented more than once, however, break stops the loop after the first iteration. Use next to modify the code so that the loop iterates until either number_a or number_b equals 5. Print "5 was reached!" before breaking out of the loop.

number_a = 0
number_b = 0

loop do
  number_a += rand(2)
    puts "number a is #{number_a}"
  number_b += rand(2)
    puts "number b is #{number_b}"
  if number_a == 5 || number_b == 5
    puts "5 was reached!"
    break
  end
end

=begin
Solution

number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)
  next unless number_a == 5 || number_b == 5

  puts '5 was reached!'
  break
end

Discussion

We can use next to skip the rest of the current iteration based on a condition. Here, by placing next before #puts and break, we can skip to the next iteration so they aren't processed until we stop skipping. We use an unless condition for next that won't evaluate to true unless either number_a or number_b equal 5. This lets us put whatever we want after next and not have to worry about it being processed until next stops skipping.
Further Exploration

Is using next the best option for this example? Could you use an if/else statement instead?
 (You could and I did. I'm uncertain which method is better. I think next is probably more efficient since it's not looking for potential elses.)
=end