=begin
What will the following code print to the screen?
=end
def scream(words)
  words = words + "!!!!"
  return
  puts words
end

scream("Yippeee")

# It should return but not output Yippeee!!!!, given that the explicit return will end the method.

=begin
It will not print anything to the screen.
=end