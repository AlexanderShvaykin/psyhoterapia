$(document).ready ()->
  current_wigth = Number(document.documentElement.clientWidth)
  if current_wigth > 600
    $('#sh_main_img').attr('src', 'images/book.png')
