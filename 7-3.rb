#How do you return the word "example" from the following array?

arr = [["test", "hello", "world"],["example", "mem"]]
p arr[1][0]
# syntax note, do not refer using parentheses for index locations, first index is the second subarray, and second index refers to the first item in that subarray

=begin
  arr.last.first
  i guess that works too lol
  arr.last = the second subarray
  arr.last.first = first item of the last subarray
=end