# Can hash values be arrays? Can you have an array of hashes? (give examples)

# hash values can definitely be arrays and you can also have arrays of hashes?
arr = [{taco: "food", butt: "dessert"}, 1, 2, 3]
hsh = { numbers: [1, 2, 3], foods: ["taco", "butt"] }

p arr
p hsh
# [{:taco=>"food", :butt=>"dessert"}, 1, 2, 3]
# {:numbers=>[1, 2, 3], :foods=>["taco", "butt"]}
=begin 
Yes

# hash values as arrays
hash = {names: ['bob', 'joe', 'susan']}

# array of hashes
arr = [{name: 'bob'}, {name: 'joe'}, {name: 'susan'}]
=end