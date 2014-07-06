define(
  [
    'cs!app',
    'cs!base-controller'
  ],
(app, BaseController) ->
  class NavbarController extends BaseController
    @register app
    @inject '$scope Config'
    initialize: ->
      @$scope.name = 'navbar'
      @$scope.branding = @Config.branding
      @$scope.navigation = @Config.navigation

)
