---
---
document.addEventListener( "DOMContentLoaded", () ->

  mq = window.matchMedia( "(max-width: 480px)" )

  # Media query for small screen
  if mq.matches
    imgs = document.querySelectorAll("img")
    for img in imgs
      url = img.getAttribute("data-echo")
      if url.match("https://farm..staticflickr.com/.*_b.jpg")
        url = url.replace("_b.jpg", ".jpg") 
      else if url.match("https://farm..staticflickr.com/.*_c.jpg")
        url = url.replace("_c.jpg", "_n.jpg") 

      img.setAttribute("data-echo", url)

  # Init echo.js lazy loading
  echo.init
      offset: 400,
      throttle: 150,
      unload: false

#	# Load Google Fonts async
#	window.WebFontConfig =
#		google:
#			families: ['Raleway:300:latin', 'Titillium+Web:latin', 'Open+Sans:400,300:latin']
#	wf = document.createElement('script')
#	wf.src = """#{if document.location.protocol is 'https' then 'https' else 'http'}://ajax.googleapis.com/ajax/libs/webfont/1/webfont.js"""
#	wf.type = 'text/javascript'
#	wf.async = 'true'
#	s = document.getElementsByTagName('script')[0]
#	s.parentNode.insertBefore wf, s
)
