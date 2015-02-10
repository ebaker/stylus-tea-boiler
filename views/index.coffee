teacup = require 'teacup'
{renderable, raw, js, css, html, head, title, script, body, div} = teacup

module.exports = renderable ({}) ->
  html ->

    # head
    head ->
      title 'boiler plate'
      css 'app'

      script src: '/lib/jquery/dist/jquery.min.js', type: 'text/javascript'
      js 'app'

    # body
    body ->
      div -> 'hello'
