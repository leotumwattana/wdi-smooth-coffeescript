# rewrite of exercise 2 using for loop

multiply_by_two = (number) -> number * 2

value = 1

for counter in [1..10]
	show value = multiply_by_two(value)

# rewrite of exercise 3 using for loop

string = ''

for counter in [1..10]
	string += '#'
	show string
