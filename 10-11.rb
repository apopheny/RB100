# Given the following data structures. Write a program that copies the information from the array into the empty hash that applies to the correct person.

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

# Expected output:
#  {
#    "Joe Smith"=>{:email=>"joe@email.com", :address=>"123 Main st.", :phone=>"555-123-4567"},
#    "Sally Johnson"=>{:email=>"sally@email.com", :address=>"404 Not Found Dr.",  :phone=>"123-234-3454"}
#  }

contacts["Joe Smith"][:email] = contact_data[0][0]
# so we don't access key "Joe Smith" with a symbol. I suppose it is an implied symbol. Not :"Joe Smith"
# logically, this reads (from the hash named)contacts[at key value "Joe Smith"][add a new subarray with a key called email] and [the thing that we are adding is found in contact data's first index position at the first index position of that subarray]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:phone] = contact_data[1][2]
contacts["Sally Johnson"][:address] = contact_data[1][1]

p contacts

# I cheated by looking at my previous solution for this exercise. 
=begin 
contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]
=end