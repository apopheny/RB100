# What's My Value? (Part 5)

# What will the following code print, and why? Don't run the code until you have tried to answer.

a = "Xyzzy"

def my_value(b)
  b = 'yzzyX'
end

my_value(a)
puts a

# I think it will be 'Xyzzy', since we have not called the mutating method String#[]. Although, it could be assumed that it is being called here, with no index location given. But I don't think reassignment of an entire string variable is, behind the scenes, saying that each index location is being replaced by the respective index locations of the new assignment. I stand by my initial answer, and hopefully am not about to flip my desk over. 

# Yay! Desk is intact. I was right for not-quite right reasons, though. Indeed, no method was called for b. However, I didn't understand that we were assigning a completely new string to b. 

=begin
Solution

Xyzzy

Discussion

This problem is nearly identical to the previous problem, except this time we are assigning directly to the variable b. When my_value begins executing, b is set to reference the same string that is referenced by a. If we modify that string by using b, then that modification is reflected in a; it's the same string.

However, we are not modifying that string in this exercise. Instead, we are assigning a completely new string to b. Assignment never changes the value of an object; instead, it creates a new object, and then stores a reference to that object in the variable on the left. So, at the end of my_value, b references the string 'yzzyX', while a remains unchanged: it still references "Xyzzy".

So, how does this differ from b[2] = '-'? The key difference with b[2] = '-' is that this is not quite the same as object assignment; it is a call to a method named []=, and this method updates the String referenced by b; it does not change the reference, so a is also referencing the modified String.

To summarize, assignment to a variable (an object) never mutates the object that is referenced. However, don't take that too far: if you assign to b[2] like we did in the previous exercise, that's a completely different operation; that actually mutates the content of the String referenced by b.
=end