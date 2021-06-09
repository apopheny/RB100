puts ">> Give me a number to convert to old Roman numerals:"
arabic_numeral = gets.to_i
puts ">> Your Roman numeral is:"

ix = false
iv = false

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
  x.times { |x| print "X" }
  fives(x_modulus)
end

def fives(number)
  v = number / 5
  if number % 5 > 0
    v_modulus = number % 5
  else
    v_modulus = 0
  end
  v.times { |v| print "V" }
    if v_modulus > 0
      v_modulus.times { |v_modulus| print "I" }
    end
    if v_modulus >= 1 && v_modulus <= 3 || v_modulus >=6 && v_modulus <= 8
      print "\n"
    end
end

def number_size(arabic_numeral)
ends_in_four = "IV"
ends_in_nine = "IX"
  if arabic_numeral % 10 == 9 && arabic_numeral > 10
    arabic_numeral = arabic_numeral - 9
    ix = true
  end
  if arabic_numeral % 10 == 4  && arabic_numeral > 5
    arabic_numeral = arabic_numeral - 4
    iv = true
  end
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
    arabic_numeral.times { |i| print "I"}
    print "\n"
  else
    puts "Give me a number greater than Zero"
    arabic_numeral = gets.to_i
    number_size(arabic_numeral)
  end
  if ix == true
    print "IX\n"
  end
  if iv == true
    print "IV\n"
  end
end

number_size(arabic_numeral)