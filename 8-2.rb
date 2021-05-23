# Look at Ruby's merge method. Notice that it has two versions. What is the difference between merge and merge!? Write a program that uses both and illustrate the differences.

# merge: Returns a new hash containing the contents of other_hash and the contents of hsh. If no block is specified, the value for entries with duplicate keys will be that of other_hash. Otherwise the value for each duplicate key is determined by calling the block with the key, its value in hsh and its value in other_hash.

# h1 = { "a" => 100, "b" => 200 }
# h2 = { "b" => 254, "c" => 300 }
# h1.merge(h2)   #=> {"a"=>100, "b"=>254, "c"=>300}
# h1.merge(h2){|key, oldval, newval| newval - oldval}
#                #=> {"a"=>100, "b"=>54,  "c"=>300}
# h1             #=> {"a"=>100, "b"=>200}

# merge!:  merge!(other_hash) → hsh click to toggle source
# merge!(other_hash){|key, oldval, newval| block} → hsh

# Adds the contents of other_hash to hsh. If no block is specified, entries with duplicate keys are overwritten with the values from other_hash, otherwise the value of each duplicate key is determined by calling the block with the key, its value in hsh and its value in other_hash.

# h1 = { "a" => 100, "b" => 200 }
# h2 = { "b" => 254, "c" => 300 }
# h1.merge!(h2)   #=> {"a"=>100, "b"=>254, "c"=>300}

# h1 = { "a" => 100, "b" => 200 }
# h2 = { "b" => 254, "c" => 300 }
# h1.merge!(h2) { |key, v1, v2| v1 }
#                 #=> {"a"=>100, "b"=>200, "c"=>300}

# so, it seems that merge returns a new hash, whereas merge! as with a lot of bang methods mutates the caller, hsh as per the documentation example

h1 = { taco: 1, pizza: 2, hamburgers: 3, fries: 4, chickens: 5 }
h2 = { pizza: 1, chickens: 2, fries: 3, hamburgers: 4, taco: 5 }

p h1.merge(h2)

p h1 == h2
# false
#  {:taco=>1, :pizza=>2, :hamburgers=>3, :fries=>4, :chickens=>5}
h1.merge!(h2)
p h1
#  {:taco=>1, :pizza=>1, :hamburgers=>4, :fries=>3, :chickens=>2}
p h1 == h2
# true

=begin
The difference is merge! modifies permanently, while merge does not.

cat = {name: "whiskers"}
weight = {weight: "10 lbs"}
puts cat.merge(weight)
puts cat                  # => {:name=>"whiskers"}
puts weight               # => {:weight=>"10 lbs"}
puts cat.merge!(weight)
puts cat                  # => {:name=>"whiskers", :weight=>"10 lbs"}
puts weight               # => {:weight=>"10 lbs"}

=end 