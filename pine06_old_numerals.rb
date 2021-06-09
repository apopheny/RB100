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