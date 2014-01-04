startsWith = (string, chars) ->
	if string.slice(0, chars.length) == chars
		true
	else
		false

show startsWith('Write a function called', 'Write')
show startsWith('Write a function called', 'called')
show startsWith('called', 'Write a function called')
show startsWith('Write', 'Write a function called')
