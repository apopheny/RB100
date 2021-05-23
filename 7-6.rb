# You run the following code and get the following error message:

# TypeError: no implicit conversion of String into Integer
#   from (irb):2:in `[]='
#   from (irb):2
#   from /Users/username/.rvm/rubies/ruby-2.5.3/bin/irb:12:in `<main>'

# What is the problem and how can it be fixed?

# names = ['bob', 'joe', 'susan', 'margaret']
# names['margaret'] = ['jody']
# p names
# the problem is that we are utilizing the array index, which uses integers to refer to the index location, but are attempting to call the index positions using strings.
# it can be fixed by replacing the entries with the index position, like so:
names = ['bob', 'joe', 'susan', 'margaret']
names[3] = 'jody'
p names
# note: replacing ['margaret'] with [3] makes an array of ['bob', 'joe', 'susan', 3]. not that i did that or anything. because i wouldn't make such a basic mistake, nor would i misread 'joe' and 'jody' for each other. i am as methodical as i am knowledgeable.
=begin
You are attempting to set the value of an item in an array using a string as the key. Arrays are indexed with integers, not strings. You would modify the array by doing the following:

names[3] = 'jody'   # => ["bob", "joe", "susan", "jody"]
=end