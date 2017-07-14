set_height = ()->
  titles = $('.sh_heigth_balance')
  max_height = 0
  titles.each (_i, title)->
    title_height = $(title).height()
    if title_height > max_height
      max_height = title_height

  console.log max_height
  titles.css('min-height', max_height)

text_cut = ()->
  $('.sh_default_li').liTextLength (
      length: 700,
      afterLength: '...',
      fullText:false,
      moreText: '<br>полный текст',
      fullText:true
  )

$(document).ready ()->
  set_height()
  $(window).resize(set_height)
  text_cut()
