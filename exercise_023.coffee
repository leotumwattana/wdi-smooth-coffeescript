p = "Realising this problem, the programmer will start to spend
a lot of time thinking about *structure.* His programs will
be rigidly structured, like rock sculptures. They are solid,
but when they must change, violence must be done to them
{Referring to the fact that structure tends to put
restrictions on the evolution of a program.}."


splitParagraph = (text) ->

  indexOrEnd = (char) ->
    index = text.indexOf char
    if index == -1 then text.length else index
  
  nextIndexOrEnd = ->
    Math.min.apply(Math, ['*', '{'].map(indexOrEnd))

  upToIndex = (index) ->
    content = text.slice(0, index)
    text = text.slice(index)
    content
  
  takeNormal = ->
    upToIndex(nextIndexOrEnd())

  takeUpTo = (char) ->
    text = text.slice(1)
    content = upToIndex(indexOrEnd(char))
    text = text.slice(1)
    content

  fragments = []

  while text != ''
    if text[0] == '*'
      content = takeUpTo('*')
      fragments.push( {content: content, type: 'emphasis' })
    else if text[0] == '{'
      content = takeUpTo('}')
      fragments.push( {content: content, type: 'footnote'})
    else
      content = takeNormal()
      fragments.push( {content: content, type: 'normal' })

  fragments

show splitParagraph(p)