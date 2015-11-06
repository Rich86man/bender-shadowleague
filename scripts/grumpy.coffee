# Description:
#   Nope.
#
# Commands:
#   bender grumpy - receive a grumpy cat
#   bender grumpy bomb [N] - receive N grumpy cats
#
# Author:
#   mike hays

module.exports = (robot) ->
  robot.respond /grumpy( me)?$/i, (msg) ->
    imageMe msg, "grumpy cat", (urls) ->
      url = msg.random urls
      msg.send "#{url.unescapedUrl}"

  robot.respond /grumpy bomb( (\d+))?/i, (msg) ->
    count = msg.match[2] || 5
    imageMe msg, "grumpy cat", (urls) ->
      urls = shuffle urls
      last = count - 1
      msg.send "#{url.unescapedUrl}" for url in urls[0..last]

imageMe = (msg, query, cb) ->
  start = Math.floor Math.random() * 48
  q = v: '1.0', rsz: '8', start: start, q: query, safe: 'active'
  msg.http('http://ajax.googleapis.com/ajax/services/search/images')
    .query(q)
    .get() (err, res, body) ->
      images = JSON.parse(body)
      images = images.responseData?.results
      if images?.length > 0
        cb images

# http://coffeescriptcookbook.com/chapters/arrays/shuffling-array-elements
shuffle = (a) ->
  for i in [a.length-1..1]
    j = Math.floor Math.random() * (i + 1)
    [a[i], a[j]] = [a[j], a[i]]
  a

