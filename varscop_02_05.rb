# What's My Value? (Part 5)

# What will the following code print, and why? Don't run the code until you have tried to answer.

a = "Xyzzy"

def my_value(b)
  b = 'yzzyX'
end

my_value(a)
puts a

# so we're creating a local variable b, and setting its value to the reverse of a. we should be creating a new string object and a should remain the same.