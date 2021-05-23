# What does the each method in the following program return after it is finished executing?

x = [1, 2, 3, 4, 5]

x.each do |a|
  a + 1
end
p newarr
# it returns a new array of + 1 to each integer in the array, but does not mutate x
# INCORRECT. Per the documentation: "Calls the given block once for each element in self, passing that element as a parameter. Returns the array itself."
=begin
  [1, 2, 3, 4, 5] 
=end