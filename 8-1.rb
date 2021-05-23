# Given a hash of family members, with keys as the title and an array of names as the values, use Ruby's built-in select method to gather only immediate family members' names into a new array.

family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

newarr = family.select do |key,value|
  key == :sisters || key == :brothers
end
immediate_family = newarr.values.flatten
p immediate_family

# ugh i suck and gave up. the values method is great, though. it takes just the values from a hash and outputs them to an array, which seems very very useful for these exercises. also, of note, the key iteration in line 10 doesn't work if you do not restate key after the boolean. it will select all the values from the original hash. using && will select all values that belong to both keys: e.g., nothing.

=begin 
immediate_family = family.select do |k, v|
  k == :sisters || k == :brothers
end

arr = immediate_family.values.flatten

p arr
=end