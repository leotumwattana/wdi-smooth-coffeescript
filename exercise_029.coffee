possibleDirections = (p) ->
  possiblePoints = []
  mapSize = 20
  deltas = [-1,0,1]

  for dx in deltas
  	for dy in deltas
  		possibleX = p.x + dx
  		possibleY = p.y + dy

  		if (possibleX < 0) || (possibleY < 0) || 
  			 (dx == dy == 0) || (possibleX > mapSize - 1) || 
  			 (possibleY > mapSize - 1)
  			continue

  		possiblePoints.push point(possibleX, possibleY)

  possiblePoints

startPoint = point(0,0)

show possibleDirections(startPoint)