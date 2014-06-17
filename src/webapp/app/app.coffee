define(
  [
    'angular',
    'Config',
    'cs!debugging-util-scripts/su'
  ],
  (angular, Config) ->
    console.log 'inside app.coffee'
    app = angular.module 'MyApp', []
    app.constant 'Config', Config

)

