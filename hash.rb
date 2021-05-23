# Using some of Ruby's built-in Hash methods, write a program that loops through a hash and prints all of the keys. Then write a program that does the same thing except printing the values. Finally, write a program that prints both.

arr1 = { food: "tacos",
  hobby: "masturbation",
  music: "lowfi"
}

arr1.select do |k, v| print "#{v} "
end

arr1.select do |k, v| print "#{k} "
end

arr1.select do |k, v| print "My favorite #{k} is #{v} "
end

#puts looks a lot prettier