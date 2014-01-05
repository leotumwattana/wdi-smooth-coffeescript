_filter = (array, test) ->
  result = []
  for element in array
    if test(element)
      result.push element
  result

even = (n) -> n % 2 == 0
show _filter([0..10], even)