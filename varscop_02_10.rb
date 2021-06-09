# What's My Value? (Part 10)

# What will the following code print, and why? Don't run the code until you have tried to answer.

a = 7
array = [1, 2, 3]

def my_value(ary)
  ary.each do |b|
    a += b
  end
end

my_value(array)
puts a

# a method cannot access a variable initialized outside of its scope. a is not initialized within the block nor method, and so this will raise an error.