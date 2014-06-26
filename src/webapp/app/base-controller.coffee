###
  Coffeescript class to use as the bas class of all controllers

  adapted from http://www.devign.me/angular-dot-js-coffeescript-controller-base-class
###
define(
  [
    'cs!app',
    'lodash'

  ],
  (appDefault, _) ->
    class BaseController
      @register: (app, name) ->
        #default the app to appDefault
        app or= appDefault
        name ?= @name || @toString().match(/function\s*(.*?)\(/)?[1]
        app.controller name, @

      @inject: (args...) ->
        #if one string with space or comma delimited args then split
        args = args[0].trim().split(/,? +/) if args.length == 1
        @$inject = args

      constructor: (args...) ->
        #constructor will be called with injected services, make each accessible on the instance
        for key, index in @constructor.$inject
          @[key] = args[index]

        #add each method defined on the class to scope method if not start with _
        #this section not needed if you assume all controllers are instantiated with the Controller as ctrl syntax
        #and all methods are invoked directly on the controller instance ie ctrl.method
        for key, fn of @constructor.prototype
          continue unless typeof fn is 'function'
          continue if key in ['constructor', 'initialize'] or key[0] is '_'
          @$scope[key] = fn.bind?(@) || _.bind(fn, @)

        #call the @initialize method if it exists
        @initialize?()
)