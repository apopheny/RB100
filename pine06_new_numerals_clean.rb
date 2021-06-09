arabic_array = []
arabic_array_int = []


def roman_numeral(arabic_numeral)
  arabic_array = arabic_numeral.to_s.split(//)
  arabic_array_int = arabic_array.map { |int| int.to_i }
  if arabic_array.length >= 8
    puts ">> This feature only supports numbers up to 9,999,999, as the unicode for Roman numerals above 1,000 are not universally displayable. Please enter a positive whole number less than 10,000,000:"
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
  if arabic_array_int[-7] == true
    millions = arabic_array_int[-7] * 1000
    millions.times { |mmmmm| print "M" }
  end
  if arabic_array_int[-6] == true
    hundred_thousands = arabic_array_int[-6] * 100
    hundred_thousands.times { |mmm| print "M"}
  end
  if arabic_array_int[-5] == true
    ten_thousands = arabic_array_int[-5] * 10
    ten_thousands.times { |mm| print "M" }
  end
  if arabic_array_int[-4] == true
    m = arabic_array_int[-4]
    m.times { |m| print "M" }
  end
  if arabic_array_int[-3] == 9
    print "CM"
  end
  if arabic_array_int[-3] == 4
    print "CD"
  end
  if arabic_array_int[-2] == 9
    print "XC"
  end
  if arabic_array_int[-2] == 4
    print "XL"
  end
  if arabic_array_int[-1] == 9
    print "IX"
  end
  if arabic_array_int[-1] == 4
    print "IV"
  end

  # if arabic_array_int[-4] != true 
  #   unless arabic_array_int[-3] == 9 || arabic_array_int[-3] == 4 || arabic_array_int[-3] != true
  #     arabic_array_int[-3].times { |hundreds| print "C"}
  #   end
  # end
  

  # if arabic_array_int[-3] != true 
  #   unless arabic_array_int[-2] == 9 || arabic_array_int[-2] == 4 || arabic_array_int[-2] != true
  #     arabic_array_int[-2].times { |tens| print "X"}
  #   end
  # end


  
  unless arabic_array_int[-1] == 9 || arabic_array_int[-1] == 4 || arabic_array_int[-1] >= 5 && arabic_array_int[-1] <= 8
    arabic_array_int[-1].times { |ones| print "I"}
  end
  
  
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




# puts ">> Your Roman numeral is:"
roman_numeral(arabic_numeral)