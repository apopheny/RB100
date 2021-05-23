# Given the following code what's the difference between the two hashes that were created?

x = "hi there"
my_hash = {x: "some value"}
my_hash2 = {x => "some value"}

# in my_hash x: is the name of the symbol as a key, in my_hash2 it references the variable x, which has already been defined as the string "hi there", ergo it is {"hi there" => "some value"}

=begin 
The first hash that was created used a symbol x as the key. The second hash used the string value of the x variable as the key.
=end