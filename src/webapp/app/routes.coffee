define(
  [
    'app',
    'Config',
    'angular-ui-router',
    #  Routes  #
    'cs!states/home/home-route',
    'cs!states/other/other-route',

  ],
  (app, Config, angularUiRouter, routes...) ->
    app.config ($stateProvider, $urlRouterProvider) ->



      ###
        Add states to the state provider
      ###
      for state in routes
        $stateProvider.state state


)