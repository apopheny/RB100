# More flavors competing. Add some more flavors to the ULTIMATE FLAVOR TOURNAMENT. Was it difficult to do? What changes would you need to make so that it’s easy to add new flavors to the tournament?

# it was a pain in the ass and i had to repeat the while loop to account for the shorter array in match three.

# changes would probably include changing the puts to something referring to the stated index by position by reading the array rather than manually, perhaps as a nested method.

match_1 = ["vanilla", "chocolate", "strawberry", "rocky road", "cookie dough"]
match_2 = ["rhubarb", "pistachio", "pralines and cream", "mint chocolate chip", "cookies and cream"]
match_3 = [] # this will hold the winners from 1 & 2
winner = nil # this will hold the final winner

def ask_for_winner(flavors)
  if flavors.length > 2
    puts "0. "+flavors[0]
    puts "1. "+flavors[1]
    puts "2. "+flavors[2]
    puts "3. "+flavors[3]
    puts "4. "+flavors[4]
    while true
      answer = gets.chomp.downcase
      if (answer == "0" || answer == "1" || answer == "2" || answer == "3" || answer == "4")
        return flavors[answer.to_i]
      else
        puts "Please answer '0' - '4'."
      end
    end
  else
    puts "0. "+flavors[0]
    puts "1. "+flavors[1]
    while true
      answer = gets.chomp.downcase
      if (answer == "0" || answer == "1")
        return flavors[answer.to_i]
      else
        puts "Please answer '0' or '2'."
      end
    end
  end
end

puts "Welcome to ULTIMATE FLAVOR TOURNAMENT!"
puts
puts "MATCH 1: Which flavor is best?"
match_3[0] = ask_for_winner(match_1)
puts
puts "MATCH 2: Which flavor is best?"
match_3[1] = ask_for_winner(match_2)
puts
puts "CHAMPIONSHIP MATCH!"
puts "Which flavor is best?"
winner = ask_for_winner(match_3)
puts
puts "And the Ultimate Flavor Champion is:"
puts winner.upcase+"!!"