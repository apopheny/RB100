=begin
Write down whether the following expressions return true or false or raise an error. Then, type the expressions into irb to see the results.
=end

p (32 * 4) >= "129"
# invalid type comparison error
p 847 == '874'
# invalid type comparison error
# incorrect, this is false since the integer is not equivalent with the string
p '847' < '846'
# false
p '847' > '846'
# true
p '847' > '8478'
# false
p '847' < '8478'
# true
=begin
    Raises an error
    false
    false
    true
    false
    true
=end