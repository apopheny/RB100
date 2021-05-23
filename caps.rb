puts "Capitalize what now?"

text = gets.chomp

def caseup(text)
  text.upcase!
  puts text
end

caseup(text)

# caps_method.rb

def caps(string)
  if string.length > 10
    string.upcase
  else
    string
  end
end

puts caps("Joe Smith")
puts caps("Joe Robertson")