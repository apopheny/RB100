# Tricky Number

# What will the following code print? Why? Don't run it until you've attempted to answer.

def tricky_number
  if true
    number = 1
  else
    2
  end
end

puts tricky_number

# I think it will be 2 since the default value should be nil, which is not true nor really false but does fall under else. In addition I have some qualms about the number variable within the method, as it's not really a return value. Rather it is initializing a variable that shouldn't be available outside of the method.

# Well, I suck.

# In the solution it is important to note that variable assignment still returns the value assigned to the variable.

# Also of note is that the conditional of if true means that the clause will always be evaluated and thus return its contingent parts. Switching it to false leaves the else statement as the last evaluated line of code.

# In Ruby, every expression evaluates as true when used in flow control, except for false and nil. Ergo tricky_number evaluates as true by default.

=begin
Solution

1

Discussion

Trying to determine the return value of tricky_number can be somewhat confusing, so lets break it down. We're printing the return value of tricky_number by prepending #puts when we invoke the method. As we look at the method, we can see the if/else statement. It has a conditional of true which means that the if clause will be evaluated every time. The assignment to number is actually quite useless because we don't use it anywhere else. However, variable assignment still returns the value that was assigned to the variable. It works the same as if the assignment wasn't even there.

Since we know that the else clause was ignored, we can safely determine that the return value will be 1 because it's the only evaluated value in the if clause.
=end