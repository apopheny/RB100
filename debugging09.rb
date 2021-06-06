# Digit Product

# Given a String of digits, our digit_product method should return the product of all digits in the String argument. You've been asked to implement this method without using reduce or inject.

# When testing the method, you are surprised by a return value of 0. What's wrong with this code and how can you fix it?

def digit_product(str_num)
  digits = str_num.chars.map { |n| n.to_i }
  product = 1

  digits.each do |digit|
    product *= digit
  end

  product
end

p digit_product('12345')
# expected return value: 120
# actual return value: 0

# str_num.chars.map takes the string and separates it to individual characters (chars) in an array (map). then we take those array of string numbers and convert them to integers in the block afterwards

# we assign a value of 0 to product, then for each number in the digits array we multiply by product... which is 0 so we keep multiplying by 0 and end up with 0 which isn't much of a surprise. *= multiplies the left and right operands and assigns the result to the left operand, so 1 *1 = 1 = product, 1 * 2 = 2 = product, 2 * 3 = 6 = product, 6 * 4 = 24 = product, 24 * 5 = 120 = product which is the final return value for product in the method

=begin
Solution

def digit_product(str_num)
  digits = str_num.chars.map { |n| n.to_i }
  product = 1

  digits.each do |digit|
    product *= digit
  end

  product
end

Discussion

Note that line 6 is short-hand for product = product * digit. If product is initialized to 0 on line 3, each iteration will multiply the digit with 0, resulting in 0. In order to arrive at the product of all digits, we must initialize product to reference 1 on line 3.
=end