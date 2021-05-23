=begin
What will the following code print to the screen?

Edit the method definition in exercise #4 so that it does print words on the screen. 2) What does it return now?
=end
def scream(words)
  words = words + "!!!!"
  p words
end

scream("Yippeee")

# I want to say p will return Yippeee!!!! but puts or print will return nil
# testing in irb bears this out
=begin
1. def scream(words)
      words = words + "!!!!"
      puts words
    end

    scream("Yippeee")

 2. still returns nil
=end