$(document).on 'page:load page:restore', ->
  # Universal Analyticsの場合
  if window.ga?
    ga('set', 'location', location.href.split('#')[0])
    ga('send', 'pageview')
