sum = (range) ->
  total = 0
  for num in range
    total += num
  total

show sum [1..10]
show sum range(1,10)