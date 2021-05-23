# Write a method that counts down to zero using recursion.

def recursion(x)
  puts x
  if x > 0
    recursion(x-1)
  end
end

recursion(99)