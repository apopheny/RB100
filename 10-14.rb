# Take the following array:

a = ['white snow', 'winter wonderland', 'melting ice', 'slippery sidewalk', 'salted roads', 'white trees']

# and turn it into a new array that consists of strings containing one word. (ex. ["white snow", etc...] → ["white", "snow", etc...]. Look into using Array's map and flatten methods, as well as String's split method.

b = a.map! { |separate| separate.to_s.split(" ") }
b.flatten!
p b

=begin 
a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']
a = a.map { |pairs| pairs.split }
a = a.flatten
p a

so, they didn't make a new array, but leaving that aside

why did they not have to convert into strings? because all of the entries were already strings? testing: Yup. My script works and theirs doesn't when I add an integer.

Why did they not have to use flatten!? Or map!? Answer: I didn't have to use map either. By doing so I mutated a. If I didn't want to create a new array, I could have just done that. They could have done that instead of a = a. Similarly, because they used a = a.flatten, they got the same result as my b.flatten!

Lastly, I didn't need to include " " as an argument for split. I guess it splits based on spaces automatically.
=end