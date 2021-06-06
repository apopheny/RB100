# Quote Confusion

# Modify the following code so that double-quotes are used instead of single-quotes.

puts "It\'s now 12 o\'clock."

# Expected output:

# It's now 12 o'clock.

=begin
Solution

puts "It's now 12 o'clock."

Discussion

When creating strings, we have the option of using either double-quotes or single-quotes. It's important to know the differences between them, especially when single-quotes are included in the text, like in the example.

Single-quotes don't allow for escape sequences. For instance, if you wanted to start a new line:

'Hello\nworld' # => Hello\nworld

The escape sequence (\n) will be displayed instead of interpreted. There is one exception, however, which is the escaping of other single-quotes, such as:

'12 o\'clock'

Even though this is perfectly valid Ruby, double-quotes are preferred in this situation, according to the Ruby Style Guide.
Further Exploration

It's possible to write a string without surrounding it with double- or single-quotes. Instead of using double-quotes, we could write the example string like this:

%Q(It's now 12 o'clock.) # => "It's now 12 o'clock."

%Q is an alternative to double-quoted strings. There's also an alternative for single-quoted strings: %q.

What about strings that contain double- and single-quotes? How would you write those using the alternate syntax?
=end