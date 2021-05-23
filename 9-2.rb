# What will the following program print to the screen? What will it return?

def execute(&block)
  block
end

execute { puts "Hello from inside the execute method!" }

# i know this causes an error, but don't remember why. & indicates something specific, and its absence from line 4 throws the error. 
# after looking at the lesson, & allows the method to take a block as an argument, but block in line 4 is missing .call at the end
# after running the code, it puts nothing to screen, and in irb it just returns a proc object

=begin 
Nothing is printed to the screen because the block is never activated with the .call method. The method returns a Proc object.
=end