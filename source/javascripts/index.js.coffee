SHORT_TEXT_SIZE = 300
MORE_TEXT_BTN = '<br> читать полностью'

set_height = ()->
  titles = $('.sh_heigth_balance')
  max_height = 0
  titles.each (_i, title)->
    title_height = $(title).height()
    if title_height > max_height
      max_height = title_height

  titles.css('min-height', max_height)

text_cut = ()->
  $('.short_text').each (_i, text)->
    short_text = $(text)

    text_size =
      if short_text.data('text_size')
        short_text.data('text_size')
      else
        SHORT_TEXT_SIZE

    short_text.liTextLength(
      length: text_size,
      moreText: MORE_TEXT_BTN,
      fullText: true
    )

$(document).ready ()->
  set_height()
  $(window).resize(set_height)
  text_cut()
  order_flag = $(document.location.search.split('=')).last()[0]
  console.log order_flag
  window.onSuccess = ->
    $('#appointment').append('<input type="submit" value="Отправить" class="btn light-blue lighten-1">')
  if order_flag.length > 0 && /^[0-9]*$/.test(order_flag)
    Materialize.toast('Спасибо! Вы успешно записались, в ближайшее время я отвечу Вам на email', 4000, 'green')
