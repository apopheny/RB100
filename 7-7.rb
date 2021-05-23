# Use the each_with_index method to iterate through an array of your creation that prints each index and value of the array.

arr = ["tacos", "pizza", "hamburgers", "fries", "chicken"]
puts "These are the unhealthy foods I enjoy:"
arr.each_with_index { |val, idx| puts "#{val.capitalize} is number #{idx +1}"}

=begin
top_five_games = ["mario brothers",
                  "excite bike",
                  "ring king",
                  "castlevania",
                  "double dragon"]

top_five_games.each_with_index do | game, index |
  puts "#{index + 1}. #{game}"
end
=end