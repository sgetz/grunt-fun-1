require 'coffee-script/register'

routes = """
test
"""
module.exports = (app) ->
  routes.trim()
    .split '\n'
    .map (routeName) ->
      console.log(routeName)
      require("./#{routeName}")(app)
