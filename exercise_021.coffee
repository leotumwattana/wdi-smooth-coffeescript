a = [1,2,3,4,5,6,7,8,0,0]

countZeroes = (array) ->
  counter = (total, element) ->
    total++ if element == 0
    total
  reduce array, counter, 0

show countZeroes(a)

count = (test, array) ->
  reduce array, ((total, element) ->
    total + if test element then 1 else 0), 0

equals = (x) ->
  (element) -> x is element

countZeros = (array) ->
  count equals(0), array

show countZeroes a