def roman_numeral(num)
raise "Must use positive integer" if num <= 0

digit_vals = [["I", 5, 1],
["V", 10, 5],
["X", 50, 10],
["L", 100, 50],
["C", 500, 100],
["D", 1000, 500],
["M", nil, 1000]]

roman = "" # string we are building
remaining = nil # string of 'remainder' letters

# Build string 'roman' in reverse.
digit_vals.each do |l, m, n|
num_l = m ? (num % m / n) : (num / n)
full = m && (num_l == (m/n - 1))

if full && (num_l > 1 || remaining)
# must carry
remaining ||= l # carry l if not already carrying
else
if remaining
roman << l + remaining
remaining = nil
end

roman << l * num_l
end
end

roman.reverse
end

input = gets.to_i

puts(roman_numeral(input))
