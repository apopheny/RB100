# Given a hash of family members, with keys as the title and an array of names as the values, use Ruby's built-in select method to gather only immediate family members' names into a new array.

family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

immediate_family = []
immediate_family = family.select { |k,v| k == :sisters || k == :brothers }

just_names = immediate_family.values.flatten
# we must create a second new array that has just the values. the .values method does so, and flatten makes a simpler one-dimensional array.
p just_names

# p immediate_family
# this remains a hash even if it is initially created as a blank array. why? i suppose it must be because we are selecting a key and a value, which implies a hash and not an array