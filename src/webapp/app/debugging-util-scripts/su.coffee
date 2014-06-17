define(
  ['angular',  'lodash'],
  (angular, _) ->
    console.log 'inside su.coffee'
    su = window.su = {}


    su.aget = (services) ->
      injector = angular.element(document.body).injector()
      console.log(injector)
      for service in services.split(/,?\s+/)
        window[service] = injector.get(service)
      return
)