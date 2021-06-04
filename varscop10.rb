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

# a is initialized out of the scope of the method, and is available to the method to handle. The array is passed to the block. a is not an array, however, so it should be the last iteration the method performs, or 7 + 10, and should put 10.

# I'm wrong and it throws an undefined local variable or method error a.

=begin
Solution

If you said this would issue an error message or raise an exception, you are correct. The error is:

undefined method `+' for nil:NilClass (NoMethodError)

Discussion

a at the top level is not visible inside the invocation of the each method with a block because the invocation of each is inside my_value, and method definitions are self-contained with respect to local variables. Since the outer a is not visible inside the my_value method definition, it isn't visible inside the method invocation with a block.
=end