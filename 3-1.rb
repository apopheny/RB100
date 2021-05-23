=begin
Write a program that prints a greeting message. This program should contain a method called greeting that takes a name as its parameter and returns a string.
=end
puts "What's your name?"
name = gets.chomp.to_s.downcase.capitalize

def greeting(name)
  puts "Hi, #{name}! Nice to say hi to you!"
end

puts greeting(name)

=begin
def greeting(name)
  "Hello, " + name + ". How are you doing?"
end

puts greeting("Bob")
=end