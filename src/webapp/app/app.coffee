define(
  [
    'angular',
    'Config',
    'angular-ui-router',
    'ng-animate',
    'mgcrea-ngStrap',
    'mgcrea-ngStrap-tpl',
    'cs!debugging-util-scripts/su'
  ],
  (angular, Config, angularUiRouter, ngAnimate, mgcreaNgStrap) ->
    console.log 'inside app.coffee'
    app = angular.module 'MyApp', ['ui.router', 'ngAnimate', 'mgcrea.ngStrap']
    app.constant 'Config', Config

)

