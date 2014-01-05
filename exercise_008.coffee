intensify = (n) ->
  if n > 0
    n + 2
  else if n < 0
    n - 2
  else
    0

runOnDemand ->
  testPure intensify, [arbInt],
    'intensify grows by 2 when positive',
    (c, arg, result) ->
      c.guard arg > 0
      arg + 2 is result

  testPure intensify, [arbInt],
    'intensify grows by 2 when negative',
    (c, arg, result) ->
      c.guard arg < 0
      arg - 2 is result

  testPure intensify, [arbConst(0)],
    'only non-zero intensify grows',
    (c, arg, result) ->
      result is 0

  test()