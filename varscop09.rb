# What's My Value? (Part 9)

# What will the following code print, and why? Don't run the code until you have tried to answer.

a = 7
array = [1, 2, 3]

array.each do |a|
  a += 1
end

puts a

# The a that is initialized in the block is not the same a as the a that is initialized out of the scope, and so it should just add 1 to each element in array. The each method is not destructive, however, so it should return the original array. Therefore it will still put 7, and array should remain the original method, while being iterated within the block.

=begin
Solution

7

Discussion

This problem demonstrates shadowing. Shadowing occurs when a block argument hides a local variable that is defined outside the block. Since the outer a is shadowed, the a += 1 has no effect on it. In fact, that statement has no effect at all.
=end