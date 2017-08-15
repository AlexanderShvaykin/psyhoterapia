window.onscroll = ->
   scrolled = window.pageYOffset || document.documentElement.scrollTop
   if Number(scrolled) >= 50
     $('.toc-wrapper').css('top', '20px')
   else
     $('.toc-wrapper').css('top', '')
