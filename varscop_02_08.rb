# What's My Value? (Part 8)

# What will the following code print, and why? Don't run the code until you have tried to answer.

array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a

# this should raise an error as a is initialized within the block. the a that we call the puts method on on line 11 does not have an argument as it cannot access the a within the block. if we had initialized outside of the block it would puts 3.