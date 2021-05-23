=begin
What does the following error message tell you?

ArgumentError: wrong number of arguments (1 for 2)
  from (irb):1:in `calculate_product'
  from (irb):4
  from /Users/username/.rvm/rubies/ruby-2.5.3/bin/irb:12:in `<main>'
=end

# You were attempting to execute a method which expected two arguments from the parameter, but only received one, and the error occurred as a result of what is on line 4

=begin
You are calling a method called calculate_product that requires two arguments, but you are only providing one.
=end