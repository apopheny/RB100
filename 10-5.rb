# Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.
# Append 11 to the end of the original array. Prepend 0 to the beginning.
# Get rid of 11. And append a 3.
 
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
 
arr.unshift(0)
arr.push(11)
arr.pop
arr << 3
p arr
=begin 
# Remove from end of array
arr.pop
 
# Append
arr << 3
# --- or ---
arr.push(3)
=end