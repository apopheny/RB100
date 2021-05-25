# while Loops
# Locate the description of the while loop in the ruby documentation.

# https://docs.ruby-lang.org/en/master/doc/syntax/control_expressions_rdoc.html

# while Loop

#   The while loop executes while a condition is true:
  
#   a = 0
  
#   while a < 10 do
#     p a
#     a += 1
#   end
  
#   p a
  
#   Prints the numbers 0 through 10. The condition a < 10 is checked before the loop is entered, then the body executes, then the condition is checked again. When the condition results in false the loop is terminated.
  
#   The do keyword is optional. The following loop is equivalent to the loop above:
  
#   while a < 10
#     p a
#     a += 1
#   end
  
#   The result of a while loop is nil unless break is used to supply a value.
=begin
Solution

Select the core API link for your version of ruby.

Select the "control expressions" link.

Search within the page for "while" until you find the "while loop" discussion.
Discussion

The hard part of this exercise is knowing exactly where to go; documentation for what we like to think of as "the ruby language" can be difficult to find until we know where to look. The "control expressions" page is where you will find discussions of most language features that control code flow: conditionals (if, unless, case), basic looping (while, until, for), loop termination (break, next), and several other features of the language.
=end