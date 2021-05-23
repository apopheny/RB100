=begin
Use Ruby's Array method delete_if and String method start_with? to delete all of the words that begin with an "s" in the following array.

a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']

and turn it into a new array that consists of strings containing one word. (ex. ["white snow", etc...] → ["white", "snow", etc...]. Look into using Array's map and flatten methods, as well as String's split method.
=end

a = ['white snow', 'winter wonderland', 'melting ice', 'slippery sidewalk', 'salted roads', 'white trees'] 

a.map! { |separate| separate.split }
aye = a.flatten

aye.delete_if { |no_s| no_s.start_with? "s"}
p aye