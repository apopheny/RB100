=begin
Write down whether the following expressions return true or false. Then type the expressions into irb to see the results.

(32 * 4) >= 129
false != !true
true == 4
false == (847 == '874')
(!true || (!(100 / 5) == 20) || ((328 / 4) == 82)) || false
=end

p (32 * 4) >= 129
# false
p false != !true
# false
p true == 4
# false 
p false == (847 == '874')
# true 
p (!true || (!(100 / 5) == 20) || ((328 / 4) == 82)) || false
# true
=begin
    false
    false
    false
    true
    true
=end