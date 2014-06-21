mongoose = require('mongoose')
###Move Model import into contoler layer not route layer ###
Test = mongoose.model('Test')

module.exports = (app) ->
  app.get '/test', (req, res) ->
    res.send {test: 'Hello world ! It Works!'}

  app.get '/test2/:name/:username', (req, res) ->
    name = req.params.name
    username = req.params.username
    test = new Test({name: name, username: username})
    test.save (err) ->
      if err
        console.lof('error')
        return res.status(400)
      res.send('it worked')