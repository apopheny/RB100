# Conditional Loop

# Using an if/else statement, run a loop that prints "The loop was processed!" one time if process_the_loop equals true. Print "The loop wasn't processed!" if process_the_loop equals false.

process_the_loop = [true, false].sample

if process_the_loop == true
  puts "The loop was processed!"
else
  puts "The loop wasn't processed!"
end

# fuck i didn't use a loop since i didn't think it needed one

=begin
process_the_loop = [true, false].sample

if process_the_loop
  loop do
    puts "The loop was processed!"
    break
  end
else
  puts "The loop wasn't processed!"
end

Discussion

The variable given to us, process_the_loop, will be assigned randomly to either true or false. Our goal here is to run the loop only if process_the_loop evaluates as true. We can use an if/else statement to accomplish this task.

To run a loop that prints "The loop was processed!" once, we can simply add a break immediately following #puts inside loop. We don't need to have any sort of counter variable in this case because we only need to print the string once. Then all we need to do is place puts "The loop wasn't processed!" in the else clause. This will print if process_the_loop evaluates as false.

If using a loop in this code seems kind of silly, it is! The main reason for requiring a loop is to get some practice using the loop syntax.
=end