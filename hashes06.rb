# Divided by Two

# Use Enumerable#map to iterate over numbers and return an array containing each number divided by 2. Assign the returned array to a variable named half_numbers and print its value using #p.

numbers = {
  high:   100,
  medium: 50,
  low:    10
}

half_numbers = numbers.map { |numbers_key, numbers_value| numbers_value / 2 }

p half_numbers

# Expected output:

# [50, 25, 5]

=begin
Solution

half_numbers = numbers.map do |key, value|
                 value / 2
               end

p half_numbers

Discussion

Enumerable#map works similarly to Array#map, however, Enumerable#map can accept two block parameters instead of one, to account for both the key and the value. You might expect Enumerable#map to return a Hash when invoked on a Hash, but it actually returns an Array.
=end