greaterThan = (number) ->
  (x) -> x > number

fn = greaterThan(5)

show fn(4)
show fn(5)
show fn(6)