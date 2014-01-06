makeReachedList = -> {}

pointName = (point) ->
	point.x + '_' + point.y

storeReached = (reachedList, point, route) ->
  reachedList[pointName(point)] = route

findReached = (reachedList, point) ->
  reachedList[pointName(point)]

reachedList = makeReachedList()
storeReached(reachedList, point(0,0), "sample route")
show findReached(reachedList, point(0,0))
show findReached(reachedList, point(0,1))