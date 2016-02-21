document.addEventListener( "DOMContentLoaded", () ->

  resize_flickr_images = (size="small") ->
    imgs = document.querySelectorAll("img")
    for img in imgs
      for attrib in ["data-echo", "src"]
        original_url = url = img.getAttribute(attrib)
        continue unless url?

        # Remove width/height for all flickr images
        if url.match("https://farm..static\.?flickr.com/.*")
          img.removeAttribute("width")
          img.removeAttribute("height")

        # Only downsize images if they haven't been loaded yet (data-echo)
        if size is "small" and attrib is "data-echo"
          if url.match("https://farm..static\.?flickr.com/.*_b.jpg")
            url = url.replace("_b.jpg", ".jpg") 
          else if url.match("https://farm..static\.?flickr.com/.*_c.jpg")
            url = url.replace("_c.jpg", "_n.jpg") 
        
        # Always upsize flickr images
        if size is "large"
          if url.match("https://farm..static\.?flickr.com/.*_n.jpg")
            url = url.replace("_n.jpg", "_c.jpg") 
          else if url.match("https://farm..static\.?flickr.com/.*_m.jpg")
            url = url.replace("_m.jpg", "_n.jpg") 
          else if url.match("https://farm..static\.?flickr.com/.*/[a-f0-9]{3,}_[a-f0-9]{3,}.jpg")
            url = url.replace(".jpg", "_b.jpg") 

        if original_url isnt url
          console.log "Replaced #{img.getAttribute(attrib)} with #{url}"
          img.setAttribute(attrib, url)

  WidthChange = (mq) ->
    if mq.matches
      resize_flickr_images("small")
    else
      resize_flickr_images("large")
    return

  if matchMedia
    mq = window.matchMedia('(max-width: 480px)')
    mq.addListener WidthChange
    WidthChange mq

  # Init echo.js lazy loading
  echo.init
      offset: 400,
      throttle: 150,
      unload: false

)
