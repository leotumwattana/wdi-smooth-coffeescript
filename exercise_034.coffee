dateString = 'died 27/04/2006: Black Leclère'

extractDate = (string) ->
  regex = /(\d{1,2})\/(\d{1,2})\/(\d{4})/
  match = string.match(regex)
  if match?
    year = Number match[3]
    month = (Number match[2]) - 1
    date = Number match[1]
    new Date(year, month, date)
  else
    throw new Error "No dates in string."

show extractDate(dateString)