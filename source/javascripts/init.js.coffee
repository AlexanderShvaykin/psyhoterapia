$(document).ready ()->
  $('.parallax').parallax()
  $('.button-collapse').sideNav(
    draggable: true,
    closeOnClick: true
  )
  $('.scrollspy').scrollSpy();
