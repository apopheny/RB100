# What will the following programs return? What is the value of arr after each?

arr = ["b", "a"]
arr = arr.product(Array(1..3))
arr.first.delete(arr.first.last)
p arr
#  [[[b, 1], [b, 2], [b, 3]], [[a, 1], [a, 2], [a, 3]]]
#


# arr = ["b", "a"]
# arr = arr.product([Array(1..3)])
# arr.first.delete(arr.first.last)
# p arr
=begin
if arr.include?(number)
  puts "#{number} is indeed in the array."
end
=end