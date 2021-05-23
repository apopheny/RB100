# If you see this error, what do you suspect is the most likely problem?

# NoMethodError: undefined method `keys' for Array

# you've probably used parentheses instead of brackets while trying to access a key-value pair and it is looking for a method that does not exist

# A. We're missing keys in an array variable.
# why would we need keys in an array?
# B. There is no method called keys for Array objects.
# this one
# C. keys is an Array object, but it hasn't been defined yet.
# if the array hasn't been defined it wouldn't cause a method error
# D. There's an array of strings, and we're trying to get the string keys out of the array, but it doesn't exist.
# by default there wouldn't be keys in the array, unless it was an array of hashes, which still shouldn't cause this error

=begin 
B
=end