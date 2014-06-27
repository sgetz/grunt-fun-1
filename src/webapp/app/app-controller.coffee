define(
  [
    'angular'
    'app'
    'angular-ui-router'
    'cs!base-controller'
  ],
  (angular, app, angularUiRouter, BaseController) ->
    class AppController extends BaseController
      @register app
      #$state $stateParams Config will now be accessible in all child scopes
      @inject '$scope $state $stateParams Config'
      initialize: ->
        console.log 'inside app-controler'
        @$scope.appName = @Config.name

)