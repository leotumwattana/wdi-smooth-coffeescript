escapeHTML = (text) ->
  replacement = (match) ->
    if match == '&' then '&amp;'
    else if match == '"' then '&quot;'
    else if match == '<' then '&lt;'
    else if match == '>' then '&gt;'

  text.replace(/([&"<>])/g, replacement)
  

show escapeHTML '< " & " >'

show escapeHTML "The 'pre-formatted' tag " +
                "is written \"<pre>\"."