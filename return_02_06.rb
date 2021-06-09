# Counting Sheep (Part 1)

# What will the following code print? Why? Don't run it until you've attempted to answer.

def count_sheep
  5.times do |sheep|
    puts sheep
  end
end

puts count_sheep

# this should cause an error as five times we're trying to call a block method of putting something with no arguments or data.