$(document).ready ()->
  current_wigth = Number(document.documentElement.clientWidth)
  if current_wigth > 600
    src = $('.sh_load_img').data('src')
    $('.sh_load_img').attr('src', src)
