# Description:
#   Applaud your fellow for a jorb well done.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot clap - shows clapping gif
#
# Author:
#   yockey

singleClap = (msg) ->
  images = [
    "http://assets0.ordienetworks.com/images/GifGuide/clapping/citizen_cane.gif",
    "http://assets0.ordienetworks.com/images/GifGuide/clapping/busey_clapping.gif",
    "http://assets0.ordienetworks.com/images/GifGuide/clapping/audience.gif",
    "http://assets0.ordienetworks.com/images/GifGuide/clapping/tumblr_lf8s4yWs6H1qa6ql2o1_500.gif",
    "http://assets0.ordienetworks.com/images/GifGuide/clapping/conan.gif",
    "http://assets0.ordienetworks.com/images/GifGuide/clapping/dwight.gif",
    "http://assets0.ordienetworks.com/images/GifGuide/clapping/joker.gif",
    "http://assets0.ordienetworks.com/images/GifGuide/clapping/riker.gif",
    "http://assets0.ordienetworks.com/images/GifGuide/clapping/kypaf.jpg.gif",
    "http://assets0.ordienetworks.com/images/GifGuide/clapping/seinfeld.gif",
    "http://24.media.tumblr.com/72092f03b3d32bda348af087aa340725/tumblr_msuf44ONq51swq6f6o1_500.gif",
    "http://media.tumblr.com/42b0907f8f14844636544aa491d43dc6/tumblr_inline_mpgwj55BJ91qz4rgp.gif",
    "http://25.media.tumblr.com/c9e885772279dff1290725667c6ee493/tumblr_mph992fd0l1rb324eo1_500.gif",
    "http://media.tumblr.com/b9bed3e3bed10edf51d48143cb9c913a/tumblr_inline_mnomulYm381qz4rgp.gif",
    "http://31.media.tumblr.com/7e5dfa0b74481478ee0953944bbc502f/tumblr_mkvnfgvf081rt89d7o1_500.gif",
    "http://25.media.tumblr.com/af09467f6e87b5b1357e2ac1ae6ad095/tumblr_mklbcdjZ8D1s6t1oio1_500.gif",
    "http://media.tumblr.com/5008161775a88f3f97245326d4d6be35/tumblr_inline_mk8ynsLsZo1qz4rgp.gif",
    "http://i.imgur.com/dhMeAzK.gif",
    "http://thechive.files.wordpress.com/2012/06/a-clapping.gif?w=500",
    "http://i.imgur.com/bhKp2.gif",
    "http://i.imgur.com/kQWV2.gif",
    "http://i.imgur.com/yGBuI.gif",
    "http://i.imgur.com/s3AoP.gif",
    "http://i.imgur.com/8NAub.gif"]
  msg.send msg.random images

module.exports = (robot) ->
  robot.hear /^\/clap$/, singleClap
  robot.respond /clap$/i, singleClap
  robot.respond /clap bomb$/i, (msg) ->
    singleClap(msg) for i in [0..3]
