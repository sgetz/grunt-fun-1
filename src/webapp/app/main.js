define(
    /* both the glob! and the cs! require plugins are installed */
    [
      'cs!Config',
      'angular',
      'lodash',
      'angular-deferred-bootstrap',
      'coffee-script',
      //app specific decencies
      'cs!app',
      'cs!routes',
      'cs!app-controller'
    ],
    function(Config, angular, _, deferredBootstrapper) {
        //jquery.getJSON('http://localhost:8000/test', function( data ) {alert(data);});
      console.log('inside main.js');
      deferredBootstrapper.bootstrap({
        element: document,
        module: 'MyApp',
        resolve: {
          Env: function ($http) {
            return $http.get('/env');
          }
        }
      });

    }
);