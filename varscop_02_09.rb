# What's My Value? (Part 9)

# What will the following code print, and why? Don't run the code until you have tried to answer.

a = 7
array = [1, 2, 3]

array.each do |a|
  a += 1
  puts a
end

puts a

# this will successfully iterate over a as it is initialized outside of the block and is available to blocks for reassignment. += reassigns the value of a by adding what is to the right to the left per iteration:
#   1 += 1 = 2
#   2 += 1 = 3
#   3 += 1 = 4

# incorrect, by naming a as our block variable we're creating a second a local to the scope of the block. my answer is correct within the block but we are reassigning that local variable rather than the top-level variable. if we changed the block variable to something else we would end with 10.