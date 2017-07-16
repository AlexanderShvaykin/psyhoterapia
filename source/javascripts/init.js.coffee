$(document).ready ()->
  $('.parallax').parallax()
  $(".dropdown-button").dropdown()
  $('.button-collapse').sideNav(
    draggable: true,
    closeOnClick: true
  )
