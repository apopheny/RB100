# What's My Value? (Part 3)

# What will the following code print, and why? Don't run the code until you have tried to answer.

a = 7

def my_value(b)
  a = b
  puts a
end

my_value(a + 5)
puts a

# i believe this will be 12, as it explicitly reassigns a to be the same as the b variable created by the method.
# nope, it's not available for rewrite by the method. we're creating another variable object called a within the method, not changing the a object outside of it.