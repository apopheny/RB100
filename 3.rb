=begin
Now, using the same array from #2, use the select method to extract all odd numbers into a new array.
=end

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
newarr = arr.select { |iter| iter.odd? }
puts newarr