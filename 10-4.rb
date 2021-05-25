# Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.
# Append 11 to the end of the original array. Prepend 0 to the beginning.

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

arr.unshift(0)
arr.push(11)
p arr

=begin 
# Append
arr.push(11)
# --- or ---
arr << 11

# Prepend
arr.unshift(0)
=end