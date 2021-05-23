# What method could you use to find out if a Hash contains a specific value in it? Write a program to demonstrate this use.

person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

p person.has_value?('web developer')

# the .include method searches keys only, it seems

=begin 
has_value?

if opposites.has_value?("negative")
  puts "Got it!"
else
  puts "Nope!"
end
=end