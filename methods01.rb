# Print Me (Part 1)

# Write a method named print_me that prints I'm printing within the method! when invoked as follows:

def print_me
  puts "I'm printing within the method!"
end

print_me

=begin
Solution

def print_me
  puts "I'm printing within the method!"
end

print_me

Discussion

In previous exercises we've used #puts both inside and outside methods. When you use #puts inside a method, you're outputting one thing and returning another. #puts outputs whatever it's given and returns nil. In this case, we're printing the value inside the method, which means the method's return value is nil.

We can verify that #puts returns nil by using irb.

irb :001 > puts "Hello World!"
Hello World!
=> nil

The second line shows what was printed to the screen while the third line shows the return value. Looking at this, we can see that #puts outputs "Hello World!" and returns nil.
=end