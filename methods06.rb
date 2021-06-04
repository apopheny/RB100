# Day or Night?

# The variable below will be randomly assigned as true or false. Write a method named time_of_day that, given a boolean as an argument, prints "It's daytime!" if the boolean is true and "It's nighttime!" if it's false. Pass daylight into the method as the argument to determine whether it's day or night.

daylight = [true, false].sample

def time_of_day(light)
  if light == true
    puts "It's daytime!"
  else
    puts "It's nighttime!"
  end
end

time_of_day(daylight)

=begin
Solution

def time_of_day(daylight)
  if daylight
    puts "It's daytime!"
  else
    puts "It's nighttime!"
  end
end

daylight = [true, false].sample
time_of_day(daylight)

Discussion

Our time_of_day method is simple enough. It accepts one argument, daylight, and proceeds to use that argument as an if conditional. If daylight evaluates as true, then "It's daytime!" will be printed. If it evaluates as false, then "It's nighttime!" will be printed. Also, notice that we use #puts within the if/else statement and not when we invoke the method.

Note that the method parameter daylight is a variable local to the time_of_day method and is not the same as the top-level local variable daylight initialized on line 9. These two variables happen to reference the same value when we invoke time_of_day on line 10, but the fact that they share a name is irrelevant. The code would function exactly the same had we given our method parameter a unique name.
=end