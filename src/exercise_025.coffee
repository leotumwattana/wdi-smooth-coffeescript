renderFragment = (fragment) ->
  if fragment.type == 'reference'
    footnote fragment.number
  else if fragment.type == 'emphasised'
    tag 'em', [fragment.content]
  else if fragment.type == 'normal'
    fragment.content

renderParagraph = (paragraph) ->
  tag paragraph.type,
    map paragraph.content, renderFragment

show renderParagraph paragraphs[2]