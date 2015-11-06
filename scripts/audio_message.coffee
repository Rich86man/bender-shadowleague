# Description:
#  Play an audio sound on the tv computer
#
# Dependencies:
#  None
#
# Commands:
#  so sad
#  hey you guys (stephanie only)
#
# Author:
#  Buck DeFore
#

exec = require('child_process').exec

audioDir = '~/Music'

configs = [
  {
    regex: /hey you guys/i
    audio: [ 'heyyouguys.mp3' ]
    restrictedTo: [ 'Stephanie Wambach' ]
  },
  {
    regex: /so sad/i
    audio: [ 'sad_trombone.mp3' ]
  }
]

module.exports = (robot) ->

  setupAudio = (config) ->
    robot.hear config.regex, (msg) ->
      whichAudio = msg.random config.audio
      return if config.restrictedTo? and msg.message.user.name not in config.restrictedTo
      command = "ssh -o StrictHostKeyChecking=no hq \"ssh -o StrictHostKeyChecking=no tv-computer 'open #{audioDir}/#{whichAudio}'\""

      exec command, (error, stdout, stderr) ->
        if error
          msg.send "Error playing sound: #{error}"
          msg.send "stdout: #{stdout}"
          msg.send "stderr: #{stderr}"

  setupAudio(config) for config in configs
