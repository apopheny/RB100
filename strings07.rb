# Goodbye, not Hello

# Given the following code, invoke a destructive method on greeting so that Goodbye! is printed instead of Hello!.

greeting = 'Hello!'

def destroy(string)
  greeting = 'Goodbye!'
end

puts greeting

# this doesn't actually mutate greeting but it does print Goodbye!

# Expected output:

# Goodbye!

=begin
Solution

greeting = 'Hello!'

greeting.gsub!('Hello', 'Goodbye')
puts greeting

Discussion

Ruby provides a great String method named String#gsub! that allows us to replace specific characters within the string by modifying the original object. In the solution, we use the destructive version of #gsub by invoking it on greeting before invoking #puts. We could have also used the non-destructive version, like so:

greeting = 'Hello!'

puts greeting.gsub('Hello', 'Goodbye')

This works because #gsub returns the modified string.
=end