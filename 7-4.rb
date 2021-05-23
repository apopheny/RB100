# What does each method return in the following example?

arr = [15, 7, 18, 5, 12, 8, 5, 1]
#syntax note: the .index method utilizes parameters in its invocation, or ()
p arr.index(5)
# this returns the index location of the first instance of the integer 5 in arr, or 3
p arr.index[5]
# this returns an error as it does not provide an argument for the .index method (after running it, it is the NoMethodError specifically)
p arr[5]
# this returns the sixth item in arr, or 8
=begin
  1. 3
2. NoMethodError: undefined method `[]' for #<Enumerator: [15, 7, 18, 5, 12, 8, 5, 1]:index>
  from (irb):81
  from /usr/local/rvm/rubies/ruby-2.5.3/bin/irb:16:in `<main>'
3. 8
=end