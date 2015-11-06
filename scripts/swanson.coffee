# Description:
#   Motivation from Ron Swanson
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot swanson me - Motivates you to be more awesome
#
# Author:
#   danielmurphy

singleSwanson = (msg) ->
  images = [
    "http://i.imgur.com/NCnM8KE.jpg",
    "http://i.imgur.com/nhYbr1q.jpg",
    "http://i.imgur.com/ladVRts.jpg",
    "http://i.imgur.com/Ukh1uMJ.jpg",
    "http://i.imgur.com/muPYtMH.gif",
    "http://i.imgur.com/15Wdteg.jpg",
    "http://i.imgur.com/pXS2y.jpg",
    "http://i.imgur.com/b23wA31.jpg",
    "http://i.imgur.com/7us4q6y.png",
    "http://i.imgur.com/fxS7Z.gif",
    "http://i.imgur.com/ukK1y.jpg",
    "http://i.imgur.com/5twRt.jpg",
    "http://i.imgur.com/ER8TH.gif",
    "http://i.imgur.com/5DqrJsE.jpg",
    "http://i.imgur.com/A8iv3.jpg",
    "http://i.imgur.com/LBmTd.gif",
    "http://i.imgur.com/HxcX1.jpg",
    "http://i.imgur.com/lJnRc5x.gif",
    "http://i.imgur.com/9XaOI.jpg",
    "http://i.imgur.com/wNA2OB7.jpg",
    "http://i.imgur.com/kW0f7.jpg",
    "http://i.imgur.com/vw9gZ.jpg",
    "http://i.imgur.com/aV6ju.jpg",
    "http://i.imgur.com/AQBJW.jpg",
    "http://i.imgur.com/tKkRO.png",
    "http://i.imgur.com/lkbGP.png",
    "http://i.imgur.com/mx54e.jpg",
    "http://i.imgur.com/LASrK.jpg",
    "http://i.imgur.com/zvUBG.jpg",
    "http://i.imgur.com/tjqca.jpg",
    "http://i.imgur.com/q5CYv.jpg",
    "http://i.imgur.com/HsoXm.jpg",
    "http://i.imgur.com/6EGQm.jpg",
    "http://i.imgur.com/DxpKu.jpg",
    "http://i.imgur.com/h2c7L.jpg",
    "http://i.imgur.com/jNyXL.jpg",
    "http://i.imgur.com/K09cJ.jpg",
    "http://i.imgur.com/mO0UE.jpg",
    "http://i.imgur.com/9hhkx.jpg"]
  msg.send msg.random images

module.exports = (robot) ->
  robot.respond /swanson me$/i, singleSwanson
  robot.respond /swanson bomb$/i, (msg) ->
    singleSwanson(msg) for i in [0..3]
