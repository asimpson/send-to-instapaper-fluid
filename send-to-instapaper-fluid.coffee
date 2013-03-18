window.INSTA =

  loadLink: ->
    $('.twitter-timeline-link').each (index, Element) ->
      $parent = $(Element).parents ".content"
      link = encodeURIComponent $(Element).attr("data-expanded-url")
      linkText = ($(Element).attr("data-expanded-url")).split('/', 3)
      desc = encodeURIComponent $(Element).parent(".js-tweet-text").text()
      theLink = "<iframe border=\"0\" scrolling=\"no\" width=\"78\" height=\"17\" allowtransparency=\"true\" frameborder=\"0\"
        style=\"margin-bottom: -3px; z-index: 1338; border: 0px; background-color: transparent; overflow: hidden;\"
        src=\"http://www.instapaper.com/e2?url="+link+"&description="+desc+"\"
        ></iframe>"

      if $parent.children(".instapaper-link").length < $(".twitter-timeline-link", $parent).length
        $parent.append "<div class=\"instapaper-link\">"+theLink+"("+linkText[2]+")</div>"

  watcher: ->
    if $(".tweet").length > INSTA.tweetNumber
      INSTA.loadLink()

  init: ->
    INSTA.loadLink()
    INSTA.tweetNumber = $(".tweet").length
    watcherID = setInterval(INSTA.watcher, 5000)

$(document).load INSTA.init()