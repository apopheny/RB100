# Breakfast, Lunch, or Dinner? (Part 5)

# What will the following code print? Why? Don't run it until you've attempted to answer.

def meal
  'Dinner'
  puts 'Dinner'
end

p meal

# I believe it returns nil due to the puts method being the last executed, except that we are using p rather than puts when calling the method this time. Also I am not sure that the puts nil overwrites a previous return value as it is simply a default value. I suspect not, but it's intuition about knowledge and could go either way.

# It's definitely going to print 'Dinner' twice. 

# I was wrong. => Dinner /n nil. So p seems to simply print the return value, and in the method it returns 'Dinner' and then, due to the puts method, nil. Also, it seems that the nil return by calling the puts method does overwrite a previous return value.

=begin
Solution

Dinner
nil

Discussion

When looking at this method, we know that the last line is puts 'Dinner', therefore, the return value of meal is the evaluated result of that line. Based on the previous exercise, we know that the return value of #puts is always nil. Putting both of those together results in the return value of meal being nil.

However, two values are printed, not just nil. This is because there is a #puts and a #p (we use #p so that nil is visible in the output).
=end