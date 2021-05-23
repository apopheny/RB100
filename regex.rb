#Write a program that checks if the sequence of characters "lab" exists in the following strings. If it does exist, print out the word.

def stringcheck(argh)
  if argh =~ /lab/
    puts argh   
  else puts "No match here"
  end
end

stringcheck("laboratory")
stringcheck("experiment")
stringcheck("Pans Labyrinth")
stringcheck("elaborate")
stringcheck("polar bear")