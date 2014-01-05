between = (paragraph, start, end) ->
  startIndex = paragraph.indexOf(start)
  endIndex = paragraph.indexOf(end, startIndex)
  paragraph.slice(startIndex + start.length, endIndex)

show between 'born 15/11/2003 (mother Spot): White Fang', 
  '(mother ', ')'