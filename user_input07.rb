# User Name and Password

# In the previous exercise, you wrote a program to solicit a password. In this exercise, you should modify the program so it also requires a user name. The program should solicit both the user name and the password, then validate both, and issue a generic error message if one or both are incorrect; the error message should not tell the user which item is incorrect.

# Examples:

# $ ruby login.rb
# >> Please enter user name:
# John
# >> Please enter your password:
# Hello
# >> Authorization failed!
# >> Please enter user name:
# mary
# >> Please enter your password:
# SecreT
# >> Authorization failed!
# >> Please enter user name:
# admin
# >> Please enter your password:
# root
# >> Authorization failed!
# >> Please enter user name:
# admin
# >> Please enter your password:
# SecreT
# Welcome!
USERNM = "superpug"
PASSWORD = "Dunklin!"

puts ">> Please enter your user name:"
user_nm = gets.chomp.to_s
puts ">> Please enter your password:"
user_pwd = gets.chomp.to_s

loop do 
  if user_pwd != PASSWORD || user_nm != USERNM
    puts "Authorization failed!"
    puts ">> Please enter your user name:"
    user_nm = gets.chomp.to_s
    puts ">> Please enter your password:"
    user_pwd = gets.chomp.to_s
  else
    puts "Welcome!"
    break
  end
end

=begin
Solution

USERNAME = 'admin'
PASSWORD = 'SecreT'

loop do
  puts '>> Please enter your user name:'
  user_name = gets.chomp

  puts '>> Please enter your password:'
  password_try = gets.chomp

  break if user_name == USERNAME && password_try == PASSWORD
  puts '>> Authorization failed!'
end

puts 'Welcome!'

Discussion

In this exercise, we solicit two pieces of information, the user name and password, and validate the two entries together. The process is very similar to our established input loop pattern, except we now solicit two different items in the loop. To do this, we need an extra call to both #puts and #gets.

As with the previous exercise, passwords are treated as case sensitive. User names vary a bit. On some systems, the user name is case sensitive, while on others, it is case insensitive. Our solution assumes that user names are case sensitive, but can easily be converted to case insensitive by changing line 6 to read:

user_name = gets.chomp.downcase

Soliciting two bits of information that are tightly coupled like this is not very common - usually, you want to validate each entry separately. We'll show this in a later exercise.

This exercise should not be used as a model for how to deal with user names and passwords in real programs. The purpose of this program is to provide a demonstration of obtaining two inputs in an input loop.

=end