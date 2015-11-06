# Description:
#   Manage and view scores
#
# Commands:
#   hubot give <x> points to @<name> - Award x points to <name>
#   hubot take <x> points from @<name> - Take x points away from <name>
#   hubot how many points does @<name> have - See how many points <name> has

# Note: only works with HipChat and @mention names.

module.exports = (robot) ->
  robot.brain.data.scores ?= {}

  adjustPoints = (msg, name, points) ->
    user = findMentionName(name)
    if user
      currentScore = robot.brain.data.scores[user] ? 0
      currentScore = currentScore + points
      robot.brain.data.scores[user] = currentScore
      msg.send "Adjusted #{user}'s score by #{points}. They now have #{currentScore} points."
    else
      msg.send "Not sure who #{name} is; please use the @mention name of the user."

  reportPoints = (msg, name) ->
    user = findMentionName(name)
    if user
      currentScore = robot.brain.data.scores[user] ? 0
      msg.send "#{user} has #{currentScore} points."
    else
      msg.send "Not sure who #{name} is; please use the @mention name of the user."

  # Find the actual mention name (as stored in HipChat)
  # given a potential mention name. E.g. 'alex' will return
  # 'Alex' if @Alex is a mention name; returns null if no match.
  findMentionName = (name) ->
    if name[0] == '@'
      name = name.substr(1, name.length)
      users = robot.brain.data.users
      for id, data of users
        mention_name = data.mention_name
        return mention_name if mention_name?.toLowerCase() == name.toLowerCase()

  robot.respond /(give|award) (\d+) points? to (\S+)\s*/i, (msg) ->
    points = parseInt(msg.match[2], 10)
    name   = msg.match[3]
    adjustPoints(msg, name, points)

  robot.respond /(give|award) (.+) (\d+) points?/i, (msg) ->
    points = parseInt(msg.match[3], 10)
    name   = msg.match[2]
    adjustPoints(msg, name, points)

  robot.respond /(take|remove|deduct) (\d+) points? from (\S+)\s*/i, (msg) ->
    points = parseInt(msg.match[2], 10)
    name   = msg.match[3]
    adjustPoints(msg, name, points * -1)

  robot.respond /how many points does (.+) have/i, (msg) ->
    name = msg.match[1]
    reportPoints(msg, name)
