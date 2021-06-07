# • Angry boss. Write an angry boss program that rudely asks what you want.
# Whatever you answer, the angry boss should yell it back to you and then
# fire you. For example, if you type in I want a raise, the angry boss should
# yell back:
# ❮ WHADDAYA MEAN "I WANT A RAISE"?!? YOU'RE FIRED!!
puts "WHADDYA WANT?!?"
user_input = gets.chomp
puts "WHADDAYA MEAN \"#{user_input.upcase}\"?!?!?! YER FIRED!!!"

# • Table of contents. Here’s a way for you to play around more with center, ljust, and rjust: write a program that displays a table of contents so that it looks like this:
# ❮ Table of Contents
# Chapter 1: Numbers page 1
# Chapter 2: Letters page 5
# Chapter 3: Variables page 9

line_width = 50
title = "Table of Contents"
chap1 = "Chapter 1: Numbers" 
chap1_page = "page 1"
chap2 = "Chapter 2: Letters" 
chap2_page = "page 5"
chap3 = "Chapter 3: Variables" 
chap3_page = "page 9"

puts title.center(line_width)
puts chap1.ljust(line_width / 2) + chap1_page.rjust(line_width / 2)
puts chap2.ljust(line_width / 2) + chap2_page.rjust(line_width / 2)
puts chap3.ljust(line_width / 2) + chap3_page.rjust(line_width / 2)