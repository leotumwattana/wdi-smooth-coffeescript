# Simulation of casting a die

# Ask user for a lucky number
print 'Please pick a number between 1 to 6: '
lucky_number = parseInt(readline())

# Keep track of number of dice rolls
number_of_rolls = 0

loop
	number_of_rolls += 1
	roll = Math.floor Math.random() * 6 + 1
	if roll == lucky_number
		print "It took #{number_of_rolls} to get your lucky number #{lucky_number}."
		break