estimatedDistance = (pointA, pointB) ->
  dx = Math.abs pointA.x - pointB.x
  dy = Math.abs pointA.y - pointB.y
  Math.sqrt(dx * dx + dy * dy) * 100

show estimatedDistance point(0,0), point(0,1)
show estimatedDistance point(1,1), point(2,2)