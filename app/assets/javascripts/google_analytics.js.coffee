ready = ->
  if window.ga != undefined
    url = location.href.split('#')[0]
    ga('send', 'pageview', url)

$(document).ready(ready)
$(document).on('page:load', ready)
