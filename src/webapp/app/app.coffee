define(
  [
    'angular',
    'Config',
    'angular-ui-router',
    'cs!debugging-util-scripts/su'
  ],
  (angular, Config) ->
    console.log 'inside app.coffee'
    app = angular.module 'MyApp', ['ui.router']
    app.constant 'Config', Config

)

