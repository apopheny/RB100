# What's My Value? (Part 6)

# What will the following code print, and why? Don't run the code until you have tried to answer.

a = 7

def my_value(b)
  b = a + a
end

my_value(a)
puts a

# similar to previous, we are creating a new variable b and assigning it to the value of a *2. a should remain the same as integers are not mutable outside of scope, and we never attempted to reassign the value of a in any case. in addition, we are passing the value of a, and not a itself. therefore this will raise an error, as a is not initialized within the scope of the method.