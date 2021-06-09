# Counting Sheep (Part 2)

# What will the following code print? Why? Don't run it until you've attempted to answer.

def count_sheep
  5.times do |sheep|
    puts sheep
  end
  10
end

puts count_sheep

# 1..4, 10

# the times method returns the initial integer if nothing else is provide once it is done, but 10 is returned, replacing it. nothing is done with the 5 that is returned, while the puts method still prints the 10 that is returned.