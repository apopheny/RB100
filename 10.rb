#Can hash values be arrays? Can you have an array of hashes? (give examples)

h1 = {:firstarray => [1, 2, 3], :secondarray => [4, 5, "taco"]}
h2 = {:secondarray => ["a", "b", "c"]}
puts h1

a1 = [h1, h2]
puts ""
puts a1

a1.to_a

puts a1