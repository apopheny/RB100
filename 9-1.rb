# Write a program that checks if the sequence of characters "lab" exists in the following strings. If it does exist, print out the word.

data = ["laboratory",
"experiment",
"Pans Labyrinth",
"elaborate",
"polar bear"]

data.each do |check| 
  if check =~ /lab/ || check =~ /Lab/
  p check
  end
end

# the book method doesn't account for the capital in "Pans Labyrinth", but the question does have all lowercase. still, my solution is pretty hamfisted

=begin 
def check_in(word)
  if /lab/ =~ word
    puts word
  else
    puts "No match"
  end
end
=end