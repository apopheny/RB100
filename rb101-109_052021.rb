=begin
Tips for working with collections
- Become comfortable with:
  - Referencing elements in collections
  - Iterating through collections
  - Transforming from one collection type to another
=end

# hsh = { a: 1, b: 2, c: 3, d: 4, e: 5, f: 6, g: 7 } # {b: 2, d: 4, f: 6}
# p hsh.select {|_, value| value.even? }

greetings = ['Hello', 'Bonjour', 'Hola', 'Ni hao', 'Guten tag']
people = ['Christopher', 'Ninian', 'Ginni', 'Riaz', 'Adrian', 'Karl' ]

greet = ["Hello", "Christopher"]
greetings.product(people).map {|greet| puts "#{greet[0]} #{greet[1]}"}

greetings.product(people).map {|greeting, person| puts "#{greeting}, #{person}!"}

# # greetings.each do |greeting|
#   people.each { |person| puts "#{greeting} #{person}" }
# end
