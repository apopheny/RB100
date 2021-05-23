# Write a method that counts down to zero using recursion.

def countdown(x)
  until x == 0
    x = x -1
    puts x
  end
end
puts "IT'S THE FINAL COUNTDOWN"
x = gets.chomp.to_i
countdown(x)
# I wish I knew wtf recursion was for sure
# Ah it is when you call the method within the method itself

def countdown(num)
  if num <= 0
    puts num
  else 
    puts num
    countdown(num - 1)
  end
end
puts "IT'S THE FINAL COUNTDOWN"
num = gets.chomp.to_i
countdown(num)
# Well if this wasn't basically copying the answer...
=begin
def count_to_zero(number)
  if number <= 0
    puts number
  else
    puts number
    count_to_zero(number-1)
  end
end

count_to_zero(10)
count_to_zero(20)
count_to_zero(-3)
=end