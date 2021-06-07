# Building and sorting an array. Write the program you saw at the beginning of this chapter, the one that asks you to type as many words as you want (one word per line, continuing until you press Enter on an empty line) and then repeats the words back in alphabetical order. Make sure to test your program thoroughly; for example, does hitting Enter on an empty line always exit your program? Even on the first line? And the second? Hint: There’s a lovely array method that’ll give you a sorted version of an array: sort. Use it!

all_words = []

loop do 
  puts "Type a word, (leave blank when done)"
  word = gets.chomp
  all_words << word
  if word.split(" ").length > 1
    puts "I said A word! ONE! SINGULAR!"
    all_words.pop
  end
  if word == ""
    puts "The words you entered, in alphabetical order, are:"
    puts all_words.sort
    break
  end
end

# • Table of contents, revisited. Rewrite your table of contents program on page 28. Start the program with an array holding all of the information for your table of contents (chapter names, page numbers, and so on). Then print out the information from the array in a beautifully formatted table of contents.


table_contents = [
  ["Table of Contents"], 
  ["Chapter 1: Numbers", "page 1"], 
  ["Chapter 2: Letters" , "page 5"], 
  ["Chapter 3: Variables", "page 9"]
]

line_width = 50

puts table_contents[0][0].center(line_width)
puts table_contents[1][0].ljust(line_width / 2) + table_contents[1][1].rjust(line_width / 2)
puts table_contents[2][0].ljust(line_width / 2) + table_contents[2][1].rjust(line_width / 2)
puts table_contents[3][0].ljust(line_width / 2) + table_contents[3][1].rjust(line_width / 2)