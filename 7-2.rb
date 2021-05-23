# What will the following programs return? What is the value of arr after each?

arr = ["b", "a"]
   arr = arr.product(Array(1..3))
  #  product: [["b", 1], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]
   arr.first.delete(arr.first.last)
  #  a.first delete: delete from the first subarray ["b", 1] the last element in the first subarray: 1
  # so, hopefully... [["b"], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]

# p arr

arr = ["b", "a"]
   arr = arr.product([Array(1..3)]) # this is a new array rather than elements that use the product method to become part of arr as in the prior example, [1], [2], [3]
  #  wait i am an idiot... the new array is [1, 2, 3]
  #  so rather than below it is [["b", [1, 2, 3]], ["a", [1, 2, 3]]]
  #  this is wrong and dumb: [[["b", 1], ["b", 2], ["b", 3]], [["a", 1], ["a", 2], ["a", 3]]]
   arr.first.delete(arr.first.last)
  # therefore it is delete from the first subarray, [["b", [1, 2, 3]] the last element in the first subarray, [1, 2, 3]
  # so, hopefully, it is [["b], ["a", [1, 2, 3]]]

p arr

# documentation first: Returns the first element, or the first n elements, of the array. If the array is empty, the first form returns nil, and the second form returns an empty array. See also #last for the opposite effect.

# arr.first = either ["b", 1] or [["b", [1, 2, 3] respectively. arr.first.delete is invoking delete on those items. In arr.first.delete(arr.first) both items refer to the same item, as stated previously, but with.last in the argument arr.first.delete(arr.first.last) it narrows it further down to the last item of the previously stated item. 

# documentation last: Returns the last element(s) of self. If the array is empty, the first form returns nil.

=begin
  1. returns 1
    arr =  [["b"], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]

2. returns [1, 2, 3]
    arr = [["b"], ["a", [1, 2, 3]]]
=end