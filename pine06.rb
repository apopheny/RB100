# More flavors competing. Add some more flavors to the ULTIMATE FLAVOR TOURNAMENT. Was it difficult to do? What changes would you need to make so that it’s easy to add new flavors to the tournament?

# it was a pain in the ass and i had to repeat the while loop to account for the shorter array in match three.

# changes would probably include changing the puts to something referring to the stated index by position by reading the array rather than manually, perhaps as a nested method.

match_1 = ["vanilla", "chocolate", "strawberry", "rocky road", "cookie dough"]
match_2 = ["rhubarb", "pistachio", "pralines and cream", "mint chocolate chip", "cookies and cream"]
match_3 = [] # this will hold the winners from 1 & 2
winner = nil # this will hold the final winner

def ask_for_winner(flavors)
  if flavors.length > 2
    puts "0. "+flavors[0]
    puts "1. "+flavors[1]
    puts "2. "+flavors[2]
    puts "3. "+flavors[3]
    puts "4. "+flavors[4]
    while true
      answer = gets.chomp.downcase
      if (answer == "0" || answer == "1" || answer == "2" || answer == "3" || answer == "4")
        return flavors[answer.to_i]
      else
        puts "Please answer '0' - '4'."
      end
    end
  else
    puts "0. "+flavors[0]
    puts "1. "+flavors[1]
    while true
      answer = gets.chomp.downcase
      if (answer == "0" || answer == "1")
        return flavors[answer.to_i]
      else
        puts "Please answer '0' or '2'."
      end
    end
  end
end

puts "Welcome to ULTIMATE FLAVOR TOURNAMENT!"
puts
puts "MATCH 1: Which flavor is best?"
match_3[0] = ask_for_winner(match_1)
puts
puts "MATCH 2: Which flavor is best?"
match_3[1] = ask_for_winner(match_2)
puts
puts "CHAMPIONSHIP MATCH!"
puts "Which flavor is best?"
winner = ask_for_winner(match_3)
puts
puts "And the Ultimate Flavor Champion is:"
puts winner.upcase+"!!"

# • Old-school Roman numerals. In the early days of Roman numerals, the Romans didn’t bother with any of this new-fangled subtraction “IX” nonsense. Nope, it was straight addition, biggest to littlest—so 9 was written “VIIII,” and so on. Write a method that when passed an integer between 1 and 3000 (or so) returns a string containing the proper old-school Roman numeral. In other words, old_roman_numeral(4) should return "IIII". Make sure to test your method on a bunch of different numbers.

# Hint: Use the integer division and modulus methods on page 29.
# For reference, these are the values of the letters they used:

# I = 1 V = 5 X = 10 L = 50
# C = 100 D = 500 M = 1000
=begin
Problem
  Conversion of arabic numerals into roman numeral strings, 
  subsequent conversion at new roman numerals values (V, X, L, C, D, M)
  adding together the converted figures larges to smallest and printing the resultant string 

Examples
  4 = IIII
  9 = “VIII” (this is different from the roman numerals I was taught)

Questions: 
  are there negative roman numerals? 
    the question doesn't really factor for this possibility, but perhaps it wouldn't be too difficult to throw a negative symbol ahead of the numeral if it were negative

  should this be able to handle numbers up to infinity? 
    the letter values given are only up to the thousands, but theoretically you could keep stacking thousands to represent big numebers, albeit very inefficiently

Data Structures
  probably mostly separate variables? the hint said to use division and modulus, and i could see breaking it down into multiple modulus for each remnant
  this is definitely a scalability issue, though, and there will be an uppper bound on the numbers that are convertible. (this didn't up being true and idk why i assumed it would be.)
  i'll stick to the thousands place for now, maybe revisit later as i intuit that it would be much more diffiocult without an upper bound

Algorithm
ask for number
get number

determine size of number
cascading methods starting at the highest place value of the following:

  is number divisible by 1000? if so, divide and modulus 1000
    output division result to variable
      variable.times M
      pass modulus remnant to D
  is previous modulus remainder divisible by 500? divide and modulus by 500
    output division result to variable
      variable.times D
      pass modulus remnant to C
  is previous modulus remainder divisible by 100? divide and modulus by 100
    output division result to variable
      variable.times C
      pass modulus remnant to L
  is previous modulus remainder divisible by 50? divide and modulus by 50
    output division result to variable
      variable.times L
      pass modulus remnant to X
  is previous modulus remainder divisible by 10? divide and modulus by 10
    output division result to variable
      variable.times X
      pass modulus remnant to V
  is previous modulus remainder divisible by 5? divide and modulus by 5
    output division result to variable
      variable.times V
      modulus.times I

      puts string of  m..i.times
Code
=end

puts ">> Give me a number to convert to old Roman numerals:"
arabic_numeral = gets.to_i
puts ">> Your Roman numeral is:"

def thousands(number)
  m = number / 1000
  if number % 1000 > 0
      m_modulus = number % 1000
  else
      m_modulus = 0
  end
  m.times { |m| print "M"}
  five_hundreds(m_modulus)
end

def five_hundreds(number)
  d = number / 500
  if number % 500 > 0
    d_modulus = number % 500
  else
    d_modulus = 0
  end
  d.times { |d| print "D"}
  hundreds(d_modulus)
end

def hundreds(number)
  c = number / 100
  if number % 100 > 0
    c_modulus = number % 100
  else
    c_modulus = 0
  end
  c.times { |c| print "C"}
  fifties(c_modulus)
end

def fifties(number)
  l = number / 50
  if number % 50 > 0
    l_modulus = number % 50
  else
    l_modulus = 0
  end
  l.times { |l| print "L"}
  tens(l_modulus)
end

def tens(number)
  x = number / 10
  if number % 10 > 0
    x_modulus = number % 10
  else
    x_modulus = 0
  end
  x.times { |x| print "X"}
  fives(x_modulus)
end

def fives(number)
  v = number / 5
  if number % 5 > 0
    v_modulus = number % 5
  else
    v_modulus = 0
  end
  v.times { |v| print "V"}
    if v_modulus > 0
      v_modulus.times { |v_modulus| print "I" }
    end
    print "\n"
end

def number_size(arabic_numeral)
  if arabic_numeral > 999
    thousands(arabic_numeral)
  elsif arabic_numeral > 499
    five_hundreds(arabic_numeral)
  elsif arabic_numeral > 99
    hundreds(arabic_numeral)
  elsif arabic_numeral > 49
    fifties(arabic_numeral)
  elsif arabic_numeral > 9
    tens(arabic_numeral)
  elsif arabic_numeral > 4
    fives(arabic_numeral)
  elsif arabic_numeral > 0
  else
    puts "Give me a number greater than Zero"
    arabic_numeral = gets.to_i
    number_size(arabic_numeral)
  end
end

number_size(arabic_numeral)

# • “Modern” Roman numerals. Eventually, someone thought it would be terribly clever if putting a smaller number before a larger one meant you had to subtract the smaller one. (My bet is that it was a stone carver in some year that ended in a 9, tasked with dating public buildings or statues or something.) As a result of this development, you must now suffer. Rewrite your previous method to return the new-style Roman numerals, so when someone calls roman_numeral(4), it should return "IV".
=begin
Problem
  Conversion of output from previous method to subtract smaller numbers from previous
  Print out in sequence of greatest to smallest except for when this subtraction occurs

  numbers to be aware of:
    4
    9
    40
    90
    400
    900

  Examples
    4 = IV
    9 = IX
    8 = VIII
    7 = VII

Questions: 
Should this subtraction apply to all roman numerals or just the mentioned 4 and 9?
  I guess it should be all numerals since that's how they work irl. Ugh.

Data Structures
  array
  ensure that numbers are parsed from first place to last place or else result will be out of sequence and incorrect

Algorithm
  ask for number
  get number
    if number is too big, return error and ask for new number
    if number is < 0, return error and ask for new number
  Millions place
    determine if true
    print that place * M * 1000 (unicode character for higher numerals does not output in WSL)
  100,000 place:
    determine if true
    print that place * M * 100 (unicode character for higher numerals does not output in WSL)  
  10,000 place:
    determine if true
    print that place * M * 10 (unicode character for higher numerals does not output in WSL)
  1,000 place:
    determine if true
    print that place * M *1000 (unicode character for higher numerals does not output in WSL)
  100 place:
    determine if true
    print C x times for 100-300
    manual for 400-900 because Roman numerals are awful. there's probably a much better way of doing this but...
  10 place:
    determine if true
    print X x times for 10-30
    manual for 40-90 because Roman numerals are awful. there's probably a much better way of doing this but...
  1 place:  
    print I x time for 1-3
    manual for 1-9 uggggggghhhh
  new line for end of print cycle

CODE
=end

def roman_numeral(arabic_numeral)
  arabic_array = arabic_numeral.to_s.split(//)
  arabic_array_int = arabic_array.map { |int| int.to_i }
  if arabic_array.length >= 8
    puts ">> This feature only supports numbers up to 9,999,999, as the unicode for Roman numerals above 1,000 is not universally displayable. Please enter a positive whole number less than 10,000,000:"
    arabic_numeral = gets.to_i
    roman_numeral(arabic_numeral)
    loop do
      break if arabic_numeral > 0
      if arabic_numeral <= 0
        puts ">> Make sure that the number you enter is greater than 0:"
      end
      arabic_numeral = gets.to_i
    end
  end
# begin millions place
  if arabic_array_int[-7] != nil
    millions = arabic_array_int[-7] * 1000
    millions.times { |mmmmm| print "M" }
  end
# begin hundred thousands place
  if arabic_array_int[-6] != nil
    hundred_thousands = arabic_array_int[-6] * 100
    hundred_thousands.times { |mmm| print "M"}
  end
# begin ten thousands place
  if arabic_array_int[-5] != nil
    ten_thousands = arabic_array_int[-5] * 10
    ten_thousands.times { |mm| print "M" }
  end
# begin thousands place
  if arabic_array_int[-4] != nil
    m = arabic_array_int[-4]
    m.times { |m| print "M" }
  end
# begin hundreds place
  unless arabic_array_int[-3] == 9 || arabic_array_int[-3] == 4 || arabic_array_int[-3] >= 5 && arabic_array_int[-3] <= 8
    arabic_array_int[-3].times { |ones| print "C"}
  end
  if arabic_array_int[-3] == 5
    print "D"
  elsif arabic_array_int[-3] == 6 
    print "DC"
  elsif arabic_array_int[-2] == 7
    print "DCC"
  elsif arabic_array_int[-2] == 8
    print "DCCC"
  end 
  if arabic_array_int[-3] == 9
    print "CM"
  end
  if arabic_array_int[-3] == 4
    print "CD"
  end
# begin tens place
  unless arabic_array_int[-2] == 9 || arabic_array_int[-2] == 4 || arabic_array_int[-2] >= 5 && arabic_array_int[-2] <= 8
    arabic_array_int[-2].times { |ones| print "X"}
  end
  if arabic_array_int[-2] == 5
    print "L"
  elsif arabic_array_int[-2] == 6 
    print "LX"
  elsif arabic_array_int[-2] == 7
    print "LXX"
  elsif arabic_array_int[-2] == 8
    print "LXXX"
  end 
  if arabic_array_int[-2] == 9
    print "XC"
  end
  if arabic_array_int[-2] == 4
    print "XL"
  end
# begin ones place
  unless arabic_array_int[-1] == 9 || arabic_array_int[-1] == 4 || arabic_array_int[-1] >= 5 && arabic_array_int[-1] <= 8
    arabic_array_int[-1].times { |ones| print "I"}
  end
  if arabic_array_int[-1] == 5
    print "V"
  elsif arabic_array_int[-1] == 6 
    print "VI"
  elsif arabic_array_int[-1] == 7
    print "VII"
  elsif arabic_array_int[-1] == 8
    print "VIII"
  end 
  if arabic_array_int[-1] == 9
    print "IX"
  end
  if arabic_array_int[-1] == 4
    print "IV"
  end
# end line for readability
print "\n"
end

puts ">> Enter a positive whole number to convert to old Roman numerals:"
arabic_numeral = gets.to_i

loop do
  break if arabic_numeral > 0
  if arabic_numeral <= 0
    puts ">> Make sure that the number you enter is greater than 0"
  end
  arabic_numeral = gets.to_i
end

puts ">> Your Roman numeral is:"
roman_numeral(arabic_numeral)