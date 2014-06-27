define(
  [
    'cs!app'
    'cs!base-controller'
  ],
(app, BaseController) ->
  class OtherController extends BaseController
    @register app
    @inject '$scope'
    initialize: ->
      @$scope.name = 'OtherController'
      @$scope.button = {
        "checkbox": {
          "left": false,
          "middle": false,
          "right": false
        }
      }


)