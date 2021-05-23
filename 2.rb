#Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value greater than 5
=begin
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

arr.select! do |iter| iter > 5
end

puts arr
=end

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

arr.each do |iter| 
  if iter > 5
    puts iter
  end
end
