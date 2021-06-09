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
    hundred_thousands.times { |mmm| print "M" }
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
  unless arabic_array_int[-3] != true || arabic_array_int[-3] == 9 || arabic_array_int[-3] == 4 || arabic_array_int[-3] >= 5 && arabic_array_int[-3] <= 8
    arabic_array_int[-3].times { |ones| print "C" }
  end
  if arabic_array_int[-3] == 5
    print "D"
  elsif arabic_array_int[-3] == 6 
    print "DC"
  elsif arabic_array_int[-3] == 7
    print "DCC"
  elsif arabic_array_int[-3] == 8
    print "DCCC"
  end 
  if arabic_array_int[-3] == 9
    print "CM"
  end
  if arabic_array_int[-3] == 4
    print "CD"
  end
# begin tens place
  unless arabic_array_int[-2] != true || arabic_array_int[-2] == 9 || arabic_array_int[-2] == 4 || arabic_array_int[-2] >= 5 && arabic_array_int[-2] <= 8
    arabic_array_int[-2].times { |ones| print "X" }
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
    arabic_array_int[-1].times { |ones| print "I" }
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

puts ">> Enter a positive whole number to convert to old Roman numerals (all decimals will be rounded DOWN):"
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