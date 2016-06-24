require! {
  '../': kindlegen
  chai: {expect}
  path
  fs
}

It = global.it

describe 'Basic Usage' ->
  @timeout 10000
  epub = null

  before (done) ->
    error, data <- fs.read-file path.resolve __dirname, 'test.epub'
    return done error if error
    epub := data
    done!

  It 'should properly convert epub buffer' (done) ->
    error, mobi <- kindlegen epub
    expect error .to.be.null
    expect mobi .to.exist
    expect Buffer.is-buffer mobi .to.be.true
    expect mobi .to.have.length.above 5000
    done!
