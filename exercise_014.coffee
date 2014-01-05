catNames = (paragraph) ->
  colon = paragraph.indexOf(':')
  paragraph[colon+2...].split ', '

show catNames 'born 20/09/2004 (mother Yello Bess): ' +
              'Doctor Hobbles the 2nd, Noog'