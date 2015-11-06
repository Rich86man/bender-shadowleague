# Description:
#   Tell Bender how awesome he is
#
# Commands:
#   we love you bender - he already knows it

module.exports = (robot) ->
  bite_images = [
    "http://fc00.deviantart.net/fs16/f/2007/216/6/1/Bite_My_Shiny_Metal_Ass_by_Red_Flare.jpg"
    "http://th07.deviantart.net/fs20/PRE/f/2007/306/8/a/Bite_My_Shiny_Metal_Ass_by_Muscleduck.jpg"
    "http://fc09.deviantart.net/fs24/f/2007/350/a/7/Bite_My_Shiny_Metal_Ass_by_xionacz.png"
    "http://slurmed.com/fanart/mr35mm/021_bender-bite-my-shiny-metal-ass_by-mr35mm.jpg"
    "http://www.merchandisingplaza.com/images/products/38089/img2.jpg"
    "http://cdn.memegenerator.net/instances/400x/24487595.jpg"
    "http://ecx.images-amazon.com/images/I/41rPYxuOGUL._SL500_SS500_.jpg"
    "http://behance.vo.llnwd.net/profiles4/174754/projects/671776/e878c2ce5b3ec094c50c0d6036794104.jpg"
    "http://cdn.memegenerator.net/instances/400x/29996073.jpg"
  ]

  robot.hear /^we love you bender/i, (msg) ->
    msg.send "http://cdn.memegenerator.net/instances/400x/33940368.jpg"
  robot.respond /(we love you)|((you'?re|you are) (so )?(awesome|great))/i, (msg) ->
    msg.send "http://cdn.memegenerator.net/instances/400x/33940368.jpg"

  robot.respond /make me a sandwich/i, (msg) ->
    img = bite_images[Math.floor(Math.random() * bite_images.length)]
    msg.send  img
  robot.respond /sudo make me a sandwich/i, (msg) ->
    msg.send "Okay."
