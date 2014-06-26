define(
  [
    'cs!app',
    'cs!base-controller'
  ],
(app, BaseController) ->
  class HomeController extends BaseController
    @register app
    @inject '$scope'
    initialize: ->
      @$scope.name = 'HomeController'

)