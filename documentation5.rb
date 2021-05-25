# Large Numbers

# Using the ruby documentation, determine how you can write large numbers in a way that makes them easier to read.

# https://docs.ruby-lang.org/en/master/doc/syntax/literals_rdoc.html

# You can write integers of any size as follows:

# 1234
# 1_234

# These numbers have the same value, 1,234. The underscore may be used to enhance readability for humans. You may place an underscore anywhere in the number.

# Floating point numbers may be written as follows:

# 12.34
# 1234e-2
# 1.234E1

# These numbers have the same value, 12.34. You may use underscores in floating point numbers as well.

=begin
Approach/Algorithm

You will find this information under the topic of literals.
Solution

You can write large numbers by using underscores to separate groups of digits, like so:

1_987_654_321

Discussion

Finding this information can be a bit difficult, especially if you don't know the right terms; most values you use in ruby have some sort of "literal" syntax: numbers can be entered as 123, while Strings are entered using quotes, e.g., "quotes". The key word here is literal. Since it is also a syntax item, we might start our search on the syntax page in the core API documentation.

If you go to this page, though, you won't find a great deal of information - just a table of different syntax items, and a whole bunch of links down the left side. The very first item in the table (as of this writing) is Literals, which sounds promising. But, there doesn't appear to be a way to learn more.

Actually, there is - look under Files or Pages on the left side of the page. There you will find a link to a file named literals or literals.rdoc. Click this to view a page that discusses all of ruby's different literals (and there are quite a few).

Once on the literals or literals.rdoc page, you will find a brief blurb about using underscores for readability in numeric literals.
Further Exploration

Is it okay to write the above number as 19_87_65_4321?

Take some time to become familiar with this page; you will see (and use) many of these different literals in the very near future, so you will want to become familiar with them. You don't need to memorize everything right now, but get a feel for what kinds of literal syntax are available, and come back to this page as needed.
=end