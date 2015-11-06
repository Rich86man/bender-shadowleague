# Description:
#   Because we all know we want to sometimes
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot flip the table - Displays a table flipping gif (because we all want to flip the table sometimes)
#   hubot flip bomb - displays 3 table flipping gifs
#
# Author:
#   jplaut

flipItGood = (msg) ->
  imgs = [
    "http://i0.kym-cdn.com/photos/images/newsfeed/000/532/488/e71.gif"
    "http://i1.kym-cdn.com/photos/images/newsfeed/000/527/557/f4a.gif"
    "http://i3.kym-cdn.com/photos/images/newsfeed/000/452/388/494.png"
    "http://i0.kym-cdn.com/photos/images/newsfeed/000/437/944/1fd.gif"
    "http://i1.kym-cdn.com/photos/images/newsfeed/000/427/913/5fd.gif"
    "http://i3.kym-cdn.com/photos/images/newsfeed/000/433/948/1ae.gif"
    "http://i2.kym-cdn.com/photos/images/masonry/000/353/786/fca.gif"
    "http://i0.kym-cdn.com/photos/images/newsfeed/000/381/437/f0f.gif"
    "http://i3.kym-cdn.com/photos/images/newsfeed/000/342/844/331.gif"
    "http://i2.kym-cdn.com/photos/images/newsfeed/000/318/605/3a7.gif"
    "http://i1.kym-cdn.com/photos/images/newsfeed/000/272/915/d06.gif"
    "http://i2.kym-cdn.com/photos/images/newsfeed/000/303/428/9d4.gif"
    "http://i1.kym-cdn.com/photos/images/newsfeed/000/275/767/774.gif"
    "http://i3.kym-cdn.com/photos/images/newsfeed/000/272/913/de1.gif"
    "http://i0.kym-cdn.com/photos/images/newsfeed/000/244/502/41d.gif"
    "http://i2.kym-cdn.com/photos/images/newsfeed/000/266/030/492.gif"
    "http://i0.kym-cdn.com/photos/images/newsfeed/000/244/499/e20.gif"
    "http://i2.kym-cdn.com/photos/images/newsfeed/000/236/556/62f.gif"
    "http://i2.kym-cdn.com/photos/images/newsfeed/000/229/910/b0b.gif"
    "http://i2.kym-cdn.com/photos/images/newsfeed/000/221/645/A5NG0.gif"
    "http://i0.kym-cdn.com/photos/images/newsfeed/000/172/300/fliptables.jpg"
    "http://i0.kym-cdn.com/photos/images/newsfeed/000/172/296/1026.gif"
    "http://i3.kym-cdn.com/photos/images/newsfeed/000/156/581/destiny%20table%20flip.gif"
    "http://i3.kym-cdn.com/photos/images/newsfeed/000/167/919/38f2f82655cf6ebd5842972e1318b03e.jpg"
    "http://i2.kym-cdn.com/photos/images/newsfeed/000/170/435/c0058698_03032615.jpg"
    "http://i0.kym-cdn.com/photos/images/newsfeed/000/171/414/tumblr_lp4iuh3mkX1r0t6qlo1_500.gif"
    "http://i3.kym-cdn.com/photos/images/newsfeed/000/225/600/1325200574513.gif"
    "http://i3.kym-cdn.com/photos/images/newsfeed/000/215/889/Kliff%20table.gif"
    "http://i2.kym-cdn.com/photos/images/newsfeed/000/257/266/40d.gif"
    "http://i.imgur.com/Bx7fW.gif"
  ]
  msg.send msg.random imgs

module.exports = (robot) ->
  robot.respond /flip the table$/i, flipItGood
  robot.respond /flip bomb$/i, (msg) ->
    flipItGood(msg) for i in [0..2]
