paragraph = 'died 27/04/2006: Black Leclère'

extractDate = (paragraph) ->
	day = Number paragraph.slice(5,7)
	month = Number paragraph.slice(8,10)
	year = Number paragraph.slice(11,15)
	new Date year, month, day

show extractDate paragraph