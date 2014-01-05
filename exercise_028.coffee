shortestRoute = (from, to) ->
  shortest = (p,c,i) -> if p.length < c.length then p else c
  possibleRoutes(from, to).reduce(shortest, Infinity)

show shortestRoute('Point Kiukiu', 'Mt Temetiu')