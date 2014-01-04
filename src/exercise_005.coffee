prompt "What's 2 + 2?", '',
  (answer) ->
    if answer == '4'
      show "Great! You know how to add basic numbers!"
    else if answer == '3' || answer == '5'
      show "Almost, but no cigar!"
    else
      show "You're pretty dumb."