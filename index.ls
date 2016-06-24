require! {
  child_process: {spawn}
  temp
  fs
}

module.exports = (epub, callback) ->
  temp.track!

  error, input-file <- temp.open \node-kindlegen
  return callback error if error

  console.log input-file.path

  error, output-file <- temp.open \node-kindlegen
  return callback error if error

  error, written, string <- fs.write input-file.fd, epub
  return callback error if error

  callback!
