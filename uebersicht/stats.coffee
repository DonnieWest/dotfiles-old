command: "echo $(date '+%m-%d-%Y%n  %l:%M')@$(pmset -g batt | egrep '([0-9]+\%).*' -o --colour=auto | awk -F'[ ;]' '{print $1 \" \" $3 \" \" $5}')"

refreshFrequency: 60000

render: (output) ->
  """
    <div>
       <ul id="battery">
          Battery
       </ul>
       <div class="brk">|</div>
       <ul id="date">
          date
       </ul>
    </div>
  """

style: """
  top: 3px;
  right: 10px;
  font: 14px "DankMono Nerd Font", "Helvetica Neue Light", "Helvetica Neue", Helvetica, Arial, sans-serif
  .brk
    display: inline-block
    color: #2f2f2f
  ul
    display: inline-block
    list-style: none
    margin: 0 0 0 2px
    padding: 0
    color: #98d1ce
"""

update: (output, domEl) ->
    values = output.split('@')
    bat = values[1].split(' ')
    if bat[1] == "charging" || bat[1] == "charged"
        bat_str = "CHR "
    else
        bat_str = "BAT "

    if bat[0] == "100%" || !bat[2]
        bat_str = bat_str + bat[0]
    else
        bat_str = bat_str + bat[0] + " " + bat[2] + " h"



    $(domEl).find('#date').html(values[0])
    $(domEl).find('#battery').html(bat_str)
