# Write a while loop that takes input from the user, performs an action, and only stops when the user types "STOP". Each loop can get info from the user.
puts "Gimme your lunch money"
user_input = gets.chomp.to_s

while user_input != "STOP"
  puts "Why are you hitting yourself?"
  user_input = gets.chomp.to_s
end

=begin
x = ""
while x != "STOP" do
  puts "Hi, How are you feeling?"
  ans = gets.chomp
  puts "Want me to ask you again?"
  x = gets.chomp
end
=end