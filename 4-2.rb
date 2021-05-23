=begin
Write a method that takes a string as argument. The method should return a new, all-caps version of the string, only if the string is longer than 10 characters. Example: change "hello world" to "HELLO WORLD". (Hint: Ruby's String class has a few methods that would be helpful. Check the Ruby Docs!)
=end

def caps(str)
  if str.length > 10
    puts str.upcase!
  else
    puts "That them there's not enough words"
  end
end

puts "What would you like to capitalize?"
str = gets.chomp.to_s

caps(str)
# HOLY FUCK REMEMBER TO CALL YOUR METHODS ARRRRGH
=begin
def caps(string)
  if string.length > 10
    string.upcase
  else
    string
  end
end

puts caps("Joe Smith")
puts caps("Joe Robertson")
=end