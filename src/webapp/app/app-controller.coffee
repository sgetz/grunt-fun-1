define(
  ['angular', 'app'],
  (angular, app) ->
    app.controller 'appController', ($scope, Config) ->
      console.log 'inside app-controler'
      $scope.appName = Config.name


)