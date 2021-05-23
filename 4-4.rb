=begin
What will each block of code below print to the screen? Write your answer on a piece of paper or in a text editor and then run each block of code to see if you were correct.
=end

# Snippet 1
'4' == 4 ? puts("TRUE") : puts("FALSE")
# "FALSE"
# if string 4 == 4 puts true else puts false
  # Snippet 2
x = 2
if ((x * 3) / 2) == (4 + 4 - x - 3)
  puts "Did you get it right?"
else
  puts "Did you?"
end
# "Did you get it right?
# 3 == 3
# Snippet 3
y = 9
x = 10
if (x + 1) <= (y)
  puts "Alright."
elsif (x + 1) >= (y)
  puts "Alright now!"
elsif (y + 1) == x
  puts "ALRIGHT NOW!"
else
  puts "Alrighty!"
end
# "Alright now!"
# if 11 <= 9 false
# elseif 11 >= 9 true
# elseif 10 == 10 true but after previous true evaluated
# else two trues in if/else, does not run
=begin
    "FALSE"
    "Did you get it right?"
    "Alright now!"
=end