define(
  [
    'app',
    'Config',
    'angular-ui-router',
  ],
  (app) ->
    app.config ($stateProvider, $urlRouterProvider) ->
      homeState = {
        name: 'home'
        url: '/home',
        templateUrl: 'app/states/home/home.html'
      }



      ###
        Add states to the state provider
      ###
      states = [homeState]
      for state in states
        $stateProvider.state state


)