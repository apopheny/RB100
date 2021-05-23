# Why does the following code...

def execute(block)
  block.call
end

execute { puts "Hello from inside the execute method!" }

# Give us the following error when we run it?

# block.rb1:in `execute': wrong number of arguments (0 for 1) (ArgumentError)

#no ampersand in the argument for the execute method. it's looking for an argument associated with a variable named block rather than the block when we call the method

# from test.rb:5:in `<main>'

=begin 
The method parameter block is missing the ampersand sign & that allows a block to be passed as a parameter.
=end