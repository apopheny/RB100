# Use Ruby's Array method delete_if and String method start_with? to delete all of the words that begin with an "s" in the following array.

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if { |s| s.to_s.start_with?('s') }

p arr
#this answer was pretty much in the documentation for array method delete_if

# Then recreate the arr and get rid of all of the words that start with "s" or starts with "w".

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.select! { |s| s.start_with?('s') == false && s.start_with?('w') == false}
p arr

=begin 
arr.delete_if { |word| word.start_with?("s") }

arr.delete_if { |word| word.start_with?("s", "w") }

the second part is a lot more elegant, even though it's saying the same thing basically
=end