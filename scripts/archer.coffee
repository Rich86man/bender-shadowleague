# Description:
#   Archer - You're not my supervisor!
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot archer me - Archer brings the Danger Zone
#
# Author:
#   danielmurphy
 
singleArcher = (msg) ->
  images = [
    "http://i.imgur.com/cCqQv.jpg",
    "http://i.imgur.com/MKmhj.jpg",
    "http://i.imgur.com/9swvzdL.png",
    "http://i.imgur.com/wh2jN.gif",
    "http://i.imgur.com/FebGokg.png",
    "http://i.imgur.com/iiCo2xU.gif",
    "http://i.imgur.com/eUOYu.gif",
    "http://i.imgur.com/aSVCzE7.png",
    "http://i.imgur.com/DNEV0.gif",
    "http://i.imgur.com/UR7rMPV.gif",
    "http://i.imgur.com/3TVyhxS.gif",
    "http://i.imgur.com/1xQe1FU.jpg",
    "http://i.imgur.com/4yzezYn.jpg",
    "http://i.imgur.com/ZGj56Mt.gif",
    "http://i.imgur.com/nL1yojj.jpg",
    "http://i.imgur.com/SvDEVsA.gif",
    "http://i.imgur.com/fqdJl.gif",
    "http://i.imgur.com/TUz8NPo.jpg",
    "http://i.imgur.com/Spl6O.gif",
    "http://i.imgur.com/SyDtS.gif",
    "http://i.imgur.com/hHS1t.gif",
    "http://i.imgur.com/0tVwj.jpg",
    "http://i.imgur.com/9pffN.gif"
    "http://i.imgur.com/f1mvamk.gif"
    "http://i.imgur.com/eIOik5i.gif"
    "http://i.imgur.com/nBMs1ZN.gif"
    "http://i.imgur.com/Xrb0myr.gif"
    "http://i.imgur.com/e81dfFn.gif"
    "http://i.imgur.com/T87J1J7.gif"
    "http://i.imgur.com/b0IgDTV.gif"
    "http://i.imgur.com/TVrLVsj.gif"
    "http://i.imgur.com/HmsPLmw.gif"
    "http://i.imgur.com/3PZLG3s.gif"
    "http://i.imgur.com/SpTDPGX.gif"
    "http://i.imgur.com/awRkgfQ.gif"
  ]
  msg.send msg.random images

module.exports = (robot) ->
  robot.respond /archer me$/i, singleArcher
  robot.respond /danger zone$/i, (msg) ->
    singleArcher(msg) for i in [0..3]
