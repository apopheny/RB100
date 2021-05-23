arr = [1, 3, 5, 7, 9, 11]
number = 9
 
if arr.include?(number) == true
  puts "Yarp"
else
  puts "Narp"
end
 
=begin
arr.each do |num|
  if num == number
    puts "#{number} is in the array."
  end
end
 
# ... or...
if arr.include?(number)
  puts "#{number} is indeed in the array."
end
=end
