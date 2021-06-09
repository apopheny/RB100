# What will the following code print, and why? Don't run the code until you have tried to answer.

a = 7

def my_value(a)
  a += 10
end

my_value(a)
puts a

# the a within the method is not the same as the a outside of the method. as a result it will not mutate the a that is initialized outside of the method.

# a = 7