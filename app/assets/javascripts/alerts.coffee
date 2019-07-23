document.addEventListener 'turbolinks:load', ->
  # check if there are any alerts first
  if $('.alert').length
    # display alerts after half a second
    window.setTimeout (->
      $('.alert').addClass 'in'
      return
    ), 500
    # dismiss alerts after 4 seconds
    window.setTimeout (->
      $('.alert').removeClass 'in'
      return
    ), 4000
  else
