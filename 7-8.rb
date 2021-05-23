# Write a program that iterates over an array and builds a new array that is the result of incrementing each value in the original array by a value of 2. You should have two arrays at the end of this program, The original array and the new array you've created. Print both arrays to the screen using the p method instead of puts.

arr = [99, 3, 25, 807, 1]
newarr = arr.map { |add2| add2 + 2}
p arr
p newarr
# note: each returns the original array and by defining newarr as the result of that function it receives the original array as its output. map creates a new array.

# HOWEVER, the book circumnavigates this in example 1 by defining an empty array which the added values are appended to within the method scope. If, however, you define new_arr as the result of the method (new_arr = arr.each do...), the method executes, returns the original array, and, perhaps because = is explicit, the end result is that new_arr == arr
=begin
arr = [1, 2, 3, 4, 5]
new_arr = []

arr.each do |n|
  new_arr << n + 2
end

p arr
p new_arr

arr = [1, 2, 3, 4, 5]

new_arr = arr.map do |n|
  n + 2
end

p arr
p new_arr

=end