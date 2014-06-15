define(
    /* both the glob! and the cs! require plugins are installed */
    ['jquery', 'lodash',  'angular', 'angular-deferred-bootstrap',  'coffee-script'],
    function(jquery, _, angular, deferredBootstrapper) {
        //jquery.getJSON('http://localhost:8000/test', function( data ) {alert(data);});
        alert('okk');
      deferredBootstrapper.bootstrap({
        element: document.body,
        module: 'MyApp',
        resolve: {
          APP_CONFIG: function ($http) {
            return $http.get('http://localhost:8000/test');
          }
        }
      });

    }
);