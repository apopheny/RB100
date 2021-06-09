# Counting Sheep (Part 3)

# What will the following code print? Why? Don't run it until you've attempted to answer.

def count_sheep
  5.times do |sheep|
    puts sheep
    if sheep >= 2
      return
    end
  end
end

p count_sheep

# 0, 1, 2, nil

# puts 0, 1, 2, puts method returns nil, p method returns that last return.