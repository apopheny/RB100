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