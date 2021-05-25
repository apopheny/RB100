# Symbol Syntax

# Using the ruby documentation, determine how you would write a Symbol that represents your name. We aren't looking for a String; we want a Symbol, which is one of ruby's datatypes.

# https://docs.ruby-lang.org/en/master/Symbol.html

# class Symbol

#   Symbol objects represent names inside the Ruby interpreter. They are generated using the :name and :"string" literals syntax, and by the various to_sym methods. The same Symbol object will be created for a given name or string for the duration of a program's execution, regardless of the context or meaning of that name. Thus if Fred is a constant in one context, a method in another, and a class in a third, the Symbol :Fred will be the same object in all three contexts.

# "chris".to_sym                                                                                              => :chris

=begin
Solution

:Mary

Discussion

Documentation for symbol literals is on the literals (or literals.rdoc) page.
=end