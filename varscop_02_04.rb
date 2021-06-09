# What's My Value? (Part 4)

# What will the following code print, and why? Don't run the code until you have tried to answer.

a = "Xyzzy"

def my_value(b)
  b[2] = '-'
end

my_value(a)
puts a

# we never even attempted to rewrite a in the method, therefore it should still be Xyzzy. 

# wrong again. strings are mutable, and changing the index reference is a mutating method.