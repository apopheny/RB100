# def factors(num)
#   if num.is_a?(Integer)
#   until num <= 0
#     p num
#     num.to_a = num - 1
#   end
#   else
#     puts "Bad boy"
#   end
# end

# p factors(5)
# p factors("dsfsdf")

five = (1..5).to_a
result = 1
factor = ()

def fact(num)
  num.product(num)
end

p fact(five)

