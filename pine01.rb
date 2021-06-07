# Write a program that tells you the following:
# • Hours in a year. How many hours are in a year?

year = 24 * 365
puts year

# • Minutes in a decade. How many minutes are in a decade?

decade = year * 10 * 60
puts decade

# • Your age in seconds. How many seconds old are you? I’m not going to

seconds_day = 24 * 60 * 60
seconds_year = seconds_day * 365
seconds_age = seconds_year * 38
puts seconds_age

# check your answer, so be as accurate—or not—as you want.
# Here’s a tougher question:
# • Our dear author’s age. If I’m 1,390 million seconds old (which I am, though
# I was somewhere in the 800 millions when I started the first edition of
# this book), how old am I?

in_minutes = 1390000000 / 60 
in_hours = in_minutes / 60
in_days = in_hours / 24
in_years = in_days / 365
puts in_years