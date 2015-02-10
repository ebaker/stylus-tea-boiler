teacup = require 'teacup'
{renderable, raw, js, css, html, head, title, script, link, body, div} = teacup

module.exports = renderable ({}) ->
  html ->

    # head
    head ->
      title 'boiler plate'

      link href: '/app.css', rel: 'stylesheet', type: 'text/css'

      urls = ['/lib/jquery/dist/jquery.min.js', '/app.js']
      for url in urls
        script src: url, type: 'text/javascript'

    # body
    body ->
      div -> 'hello'
