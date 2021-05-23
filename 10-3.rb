# Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.
# Same as above, but only print out values greater than 5.
# Now, using the same array from #2, use the select method to extract all odd numbers into a new array.

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

newarr = []

newarr = arr.odd? 
# { |odd|
#   odd % 2 == 1 << newarr
# }
p newarr

=begin 
one line version
arr.each { |number| puts number if number > 5 }

# multi-line version
arr.each do |number|
  if number > 5
    puts number
  end
end
=end