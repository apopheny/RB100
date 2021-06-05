# Breakfast, Lunch, or Dinner? (Part 3)

# What will the following code print? Why? Don't run it until you've attempted to answer.

def meal
  return 'Breakfast'
  'Dinner'
end

puts meal

# it will print 'Breakfast' due to the explicit return in the method, which causes it to exit after returning the value of that line.

=begin
Solution

Breakfast

Discussion

Based on the knowledge that return exits the method, you should be able to determine that the return value is "Breakfast". Even though "Dinner" is the last line, when return is executed, it tells the method to end, which means anything after that line won't be processed.
=end