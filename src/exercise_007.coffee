# Exercise 7
# ----------
# Write a function called absolute, which returns the absolute value of the number 
# it is given as its argument. The absolute value of a negative number is the positive 
# version of that same number, and the absolute value of a positive number (or zero) 
# is that number itself.

absolute = (x) ->
	if x < 0
		x * -1
	else
		x

# print some examples of the absolute function
print absolute(2)
print absolute(-3.0)
print absolute(-0)