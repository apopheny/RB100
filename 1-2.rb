=begin
Use the modulo operator, division, or a combination of both to take a 4 digit number and find the digit in the: 1) thousands place 2) hundreds place 3) tens place 4) ones place
=end

ones = 1234 % 1230
tens = 1234 % 1000 % 100 / 10
hundreds = 1234 % 1000 / 100
thousands = 1234 / 1000

puts "the ones place is #{ones}, the tens place is #{tens}, the hundreds place is #{hundreds}, and the thousands place is #{thousands}"

=begin
thousands = 4936 / 1000
hundreds = 4936 % 1000 / 100
tens = 4936 % 1000 % 100 / 10
ones = 4936 % 1000 % 100 % 10
=end