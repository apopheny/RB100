# Optional Arguments
# Assume you have the following code:
s = 'abc def ghi,jkl mno pqr,stu vwx yz'
puts s.split.inspect
# => ['abc', 'def', 'ghi', 'jkl', 'mno', 'pqr', 'stu', 'vwx', 'yz'] i'm assuming that escaped means that they are omitted. if i am incorrect, then it will terminate after ghi.
# i was wrong in a different way. it considered the commas as part of the strings that were split, e.g., 'ghi,jkl'
puts s.split(',').inspect
# => ['abc def ghi', 'jkl mno pqr', 'stru vwx yx']
puts s.split(',', 2).inspect
# => ['abc def ghi', 'jkl mno pqr']
# incorrect, correct ouput is: ["abc def ghi", "jkl mno pqr,stu vwx yz"]
# this behavior can be inferred by "If limit is 1, the entire string is returned as the only entry in an array." 2, then, returns the first delimited string as one entry, and the second would be the remnant of the rest of the string
# if we add more commas to the second part, it still prints the remnant as the second string with those additional commas included.

# What will each of the 3 puts statements print?

# inspect → string
# Returns a printable version of str, surrounded by quote marks, with special characters escaped.

# split(pattern=nil, [limit]) → an_array
# split(pattern=nil, [limit]) {|sub| block } → str
# Divides str into substrings based on a delimiter, returning an array of these substrings.
# If pattern is a String, then its contents are used as the delimiter when splitting str. If pattern is a single space, str is split on whitespace, with leading and trailing whitespace and runs of contiguous whitespace characters ignored.

# If pattern is a Regexp, str is divided where the pattern matches. Whenever the pattern matches a zero-length string, str is split into individual characters. If pattern contains groups, the respective matches will be returned in the array as well.

# If pattern is nil, the value of $; is used. If $; is nil (which is the default), str is split on whitespace as if ' ' were specified.

# If the limit parameter is omitted, trailing null fields are suppressed. If limit is a positive number, at most that number of split substrings will be returned (captured groups will be returned as well, but are not counted towards the limit). If limit is 1, the entire string is returned as the only entry in an array. If negative, there is no limit to the number of fields returned, and trailing null fields are not suppressed.

# When the input str is empty an empty Array is returned as the string is considered to have no fields to split.

=begin
# puts s.split.inspect
["abc", "def", "ghi,jkl", "mno", "pqr,stu", "vwx", "yz"]

# puts s.split(',').inspect
["abc def ghi", "jkl mno pqr", "stu vwx yz"]

# puts s.split(',', 2).inspect
["abc def ghi", "jkl mno pqr,stu vwx yz"]

Discussion

The documentation for String#split shows that its signature is:

    split(pattern=nil, [limit]) → anArray

This signature shows two different ways that the ruby documentation shows optional arguments; the first form (pattern=nil) is used when an optional argument has a default value, while the [] in [limit] tells us that this is an optional argument with no default value. You will sometimes see square brackets around optional arguments that have default values; we'll see this in another exercise later on.

From this, we can tell that calling #split without arguments is equivalent to calling it with one argument, s.split(nil), which causes #split (per the text below the signature) to use a strange global variable named $;. We won't discuss this variable right now, but it will almost always be nil; this is the default. When $; is nil, #split splits the String based on white space. So, our first call to #split returns an Array of 7 elements after splitting s at each sequence of spaces.

The documentation also tells us that we can supply an explicit value on which to split the String by passing that value as the first argument. This value can be a String or a Regexp; we opt to pass in a String ',' which causes s to be split on commas. We thus get an Array of 3 Strings in the second puts.

Finally, the documentation tells us that we can specify a limit as the 2nd argument; the limit restricts the split operation so that no more than limit values are returned; any other delimiters will be ignored. So, our 3rd call returns a 2 element Array.

We can tell that #split returns Arrays by looking at the signature; it shows that the return value is anArray, which is just another way to say that an Array is created and returned by the method.

It's difficult to tell from the text, but the fact that #split returns the results of a split operation as an Array suggests that it does not alter the original String. This is, in fact, the case; #split does not mutate the String to which it is applied. This can be tested in irb if you are uncertain:

>> s = 'abc def ghi,jkl mno pqr,stu vwx yz'
=> "abc def ghi,jkl mno pqr,stu vwx yz"
>> puts s.split.inspect
["abc", "def", "ghi,jkl", "mno", "pqr,stu", "vwx", "yz"]
=> nil
>> puts s
"abc def ghi,jkl mno pqr,stu vwx yz"
=> nil
=end