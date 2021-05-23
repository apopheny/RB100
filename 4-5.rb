=begin
When you run the following code 

You get the following error message..

exercise.rb:8: syntax error, unexpected end-of-input, expecting keyword_end

Why do you get this error and how can you fix it?
=end

def equal_to_four(x)
  if x == 4
    puts "yup"
  else
    puts "nope"
  end
  #this was added by me and did not exist previously. You get the error message because it was expecting closure of a do/end but it did not receive it
end

equal_to_four(5)

=begin
You get this error because the end in the code above gets matched with the if..else statement. The error message is telling us that the interpreter was expecting the keyword end to close off our equal_to_four method, that end was not found.
=end