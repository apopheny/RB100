# What's My Value? (Part 1)

# What will the following code print and why? Don't run it until you have tried to answer.

a = 7

def my_value(b)
  b += 10
end

my_value(a)
puts a

# a isn't available to the method for rewriting when explicitly stated as such. if it had been nil, it could have been rewritten within the method, but b is a variable scoped local to the method, and therefore gets its value from a, but does not point to a.

# puts a = 7