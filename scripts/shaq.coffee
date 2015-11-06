# Description:
#   Shaq - Cuz we all need some Shaq in our lives
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot shaq it to me - Produces an mezmerizing Shaq gif
#
# Author:
#   jplaut

module.exports = (robot) ->
  robot.respond /shaq (it to )?me$/i, ((msg) -> msg.send("http://i.imgur.com/q3e87zR.gif"))
  robot.respond /shaq bomb$/i, (msg) ->
    msg.send("http://i.imgur.com/q3e87zR.gif") for i in [0..3]

