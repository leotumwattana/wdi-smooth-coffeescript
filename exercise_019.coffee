range = (n,m) ->
	if arguments.length < 2
    number for number in [0..n]
  else
  	number for number in [n..m]

show range(5)
show range(2,5)