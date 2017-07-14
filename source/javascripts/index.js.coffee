set_height = ()->
  titles = $('.sh_heigth_balance')
  max_height = 0
  titles.each (_i, title)->
    title_height = $(title).height()
    if title_height > max_height
      max_height = title_height

  titles.css('min-height', max_height)

$(document).ready ()->
  set_height()
  $(window).resize(set_height)
