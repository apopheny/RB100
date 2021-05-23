# What is the value of a, b, and c in the following program?
 
string = "Welcome to America!"
# strings are sequential, indexed objects
a = string[6]
# using a zero index, as ruby does, the seventh item in the string, "e"
b = string[11]
# the 12 item, "A"
c = string[19]
# the 20th item in a 19 item string, nil
puts a
puts b 
p c
=begin
a = "e"
b = "A"
c = nil
=end