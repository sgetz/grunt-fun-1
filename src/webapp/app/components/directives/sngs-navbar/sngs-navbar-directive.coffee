define(
  [
    'app'
    'cs!components/directives/sngs-navbar/sngs-navbar-controller'
  ],
  (app) ->
    app.directive 'sngsNavbar', (Config) ->
      {
        restrict: 'A'
        replace: true
        scope: true
        templateUrl: 'app/components/directives/sngs-navbar/sngs-navbar.html'
        controller: 'NavbarController'
      }
)
