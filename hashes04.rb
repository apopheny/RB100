# What Color?

# Using the following code, select the value 'blue' from car and print it with #puts.

car = {
  type:    'sedan',
  color:   'blue',
  year:    2003
}

puts car.fetch(:color)

=begin
Solution

puts car[:color]

Discussion

Selecting data from a hash is similar to adding it. Hash#[] returns the value associated with the given key, like this:

car[:type]  # "sedan"
car[:color] # "blue"
car[:year]  # 2003
=end