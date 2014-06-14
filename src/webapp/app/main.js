define(
    ['jquery', 'lodash', 'angular'],
    function(jquery, _, angular) {
        console.log('it worked');
        console.log(angular);
        jquery.getJSON('http://localhost:8000/test', function( data ) {alert(data);})
    }
);