command: "echo $(/usr/local/bin/chunkc tiling::query -d id)"

refreshFrequency: 100

render: (output) ->
  """
    <div>
      <ul>
        <li id="d1">1: Browser</li>
        <li id="d2">2: Chat</li>
        <li id="d3">3: Code</li>
        <li id="d4">4: Email</li>
        <li id="d5">5: Code</li>
        <li id="d6">6: Code</li>
        <li id="d7">7: Code</li>
        <li id="d8">8: Code</li>
        <li id="d9">9: Code</li>
        <li id="d10">10: Code</li>
      <ul>
    </div>
  """

style: """
  top: 1px;
  font: 12px "DankMono Nerd Font", "Helvetica Neue Light", "Helvetica Neue", Helvetica, Arial, "Lucida Grande", sans-serif
  font-weight: 700
  ul
    list-style: none
    margin: 0 0 0 2px
    padding: 0
  li
    display: inline-block
    border: #2f2f2f
    color: #98d1ce
    background: #0a0f14
    padding: 1px
    padding-left: 5px
    padding-right: 5px
  li.active
    color: white
    background: #cb1ed1
    border: #cb3dff
"""

update: (output, domEl) ->
  if ($(domEl).find('li.active').id isnt output)
    $(domEl).find('li.active').removeClass('active')
    $(domEl).find('li#d' + output).addClass('active')
