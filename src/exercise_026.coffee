makeRoads = (start) ->

  even = (num) -> num % 2 == 0

  if even(arguments.length) || arguments.length < 3
    throw new Error "Wrong number of args for makeRoads (#{arguments.length} of #{Math.max(3, arguments.length + 1)})"
  
  for i in [1...arguments.length] by 2
    makeRoad start, arguments[i], arguments[i+1]
      

makeRoads('Happy Valley', 'Central', 15, 'Wan Chai', 16)
show roads