activateSpinner = ->
  $('#loading').removeClass 'inactive'

initLoadingSpinner = ->
  # Hide spinner
  $('#loading').addClass 'inactive'
  # Form submit spinner
  # $('.remote-with-spinner').ajaxForm()
  # multipart forms via ajax
  # $('.remote-with-spinner').children(':submit').on 'click', ->
  #   activateSpinner()
  #   return
  # trigger regular submit via js
  $('.btn-submit').on 'click', (event) ->
    event.preventDefault()
    activateSpinner()
    $(this).parents('form').submit()

# Turbolinks spinner
document.addEventListener 'turbolinks:request-start', (event) ->
  activateSpinner()
  return

document.addEventListener 'turbolinks:load', ->
  initLoadingSpinner()
