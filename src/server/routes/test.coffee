module.exports = (app) ->
  app.get '/test', (req, res) ->
    res.send {test: 'Hello world ! It Works!'}