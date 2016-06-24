require! {
  '../': kindlegen
  chai: {expect}
  fs
}

It = global.it

describe 'Basic Usage' ->
  epub = null

  before (done) ->
    error, data <- fs.read-file "#{__dirname}/test.epub"
    return done error if error
    epub = data
    done!

  It 'should properly convert epub buffer' (done) ->
    error, mobi <- kindlegen epub
    expect error .to.be.null
    expect mobi .to.be.not.null
