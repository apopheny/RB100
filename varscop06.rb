# What's My Value? (Part 6)

# What will the following code print, and why? Don't run the code until you have tried to answer.

a = 7

def my_value(b)
  b = a + a
end

my_value(a)
puts a

# So, here, we are again assigning a new variable to b, rather than calling a method that mutates the object that is referenced by b, which would be the original variable a. I think a = 7.

# So, not quite right here either. This returns a undefined variable or local method error. a still does equal seven, but that's not what prints. The top level local variable a is not visible within the method, which is why it raises the error. The explanation makes an important distinction that local variables are available within blocks, procs, and lambdas, but not methods.

=begin
Solution

If you said this would issue an error message or raise an exception, you are correct. The error is:

`my_value': undefined local variable or method `a' for main:Object (NameError)

Discussion

Even though a is defined before my_value is defined, it is not visible inside my_value. Method definitions are self contained with respect to local variables. Local variables initialized inside the method definition are not visible outside the method definition, and local variables initialized outside the method definition are not visible inside the method definition.

Note, however, that local variables will be visible (via closures) inside blocks, procs, and lambdas.
=end