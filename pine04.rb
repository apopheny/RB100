# “99 Bottles of Beer on the Wall.” Write a program that prints out the lyrics
# to this beloved classic song.
beer = 100
loop do beer -= 1
  if beer == 1
    puts "#{beer.to_s} bottle of beer on the wall,\n#{beer.to_s} bottle of beer!\nTake it down, pass it around,\n#{beer-1} bottles of beer on the wall!"
    break
  elsif beer == 2 
    puts "#{beer.to_s} bottles of beer on the wall,\n#{beer.to_s} bottles of beer!\nTake one down, pass it around,\n#{beer-1} bottle of beer on the wall!\n"
    puts ""
  else puts "#{beer.to_s} bottles of beer on the wall,\n#{beer.to_s} bottles of beer!\nTake one down, pass it around,\n#{beer-1} bottles of beer on the wall!"
    puts ""
  end
end

# until beer == 0
#   puts 
#   beer -= 1
# end

# • Deaf grandma. Whatever you say to Grandma (whatever you type in), she
# should respond with this:
# ❮ HUH?! SPEAK UP, SONNY!
# unless you shout it (type in all capitals). If you shout, she can hear you
# (or at least she thinks so) and yells back:
# ❮ NO, NOT SINCE 1938!
# To make your program really believable, have Grandma shout a different
# year each time, maybe any year at random between 1930 and 1950. (This
# part is optional and would be much easier if you read the section on
# Ruby’s random number generator on page 30.) You can’t stop talking to
# Grandma until you shout BYE.
# Hint 1: Don’t forget about chomp. "BYE" with an Enter at the end isn’t the
# same as "BYE" without one.
# Hint 2: Try to think about what parts of your program should happen
# over and over again. All of those should be in your while loop.
# Hint 3: People often ask me, “How can I make rand give me a number in a
# range not starting at zero?” But you don’t need it to. Is there something
# you could do to the number rand returns to you?
# • Deaf grandma extended. What if Grandma doesn’t want you to leave?
# When you shout BYE, she could pretend not to hear you. Change your
# previous program so that you have to shout BYE three times in a row. Make
# sure to test your program: if you shout BYE three times but not in a row,
# you should still be talking to Grandma.
# • Leap years. Write a program that asks for a starting year and an ending
# year and then prints all the leap years between them (and including them,
# if they are also leap years). Leap years are years divisible by 4 (like 1984
# and 2004). But years divisible by 100 are not leap years (such as 1800
# report erratum • discuss
# A Little Bit of Logic • 47and 1900) unless they are also divisible by 400 (such as 1600 and 2000,
# which were in fact leap years). What a mess.