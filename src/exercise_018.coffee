ageOfCat = (cat) ->
  cat.death - cat.birth

oldestCat = (cats) ->
  oldest = null
  for name of cats
    cat = cats[name]
    age = ageOfCat(cat)
    if oldest is null || ageOfCat(oldest) < ageOfCat(cat)
      oldest = cat
  oldest?.name

show oldestCat(catData)
