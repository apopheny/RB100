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