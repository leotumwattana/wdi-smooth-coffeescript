stripPercent = (string) ->
  count = 0
  while (indexOfPercent = string.indexOf('%')) >= 0
    string = string.slice 1
    count++
  
  type = if count == 0 then 'p' else 'h' + count
  {content: string.trimLeft(), type: type}

show stripPercent ' The Book of Programming'
show stripPercent '% The Book of Programming'
show stripPercent '%% The Book of Programming'
show stripPercent '%%% The Book of Programming'
show stripPercent '%%%% The Book of Programming'
show stripPercent '%%%%% The Book of Programming'

processParagraph = (paragraphs) ->
  array = paragraphs.split("\n\n")
  array.map (p) -> stripPercent(p)

show processParagraph(recluseFile)