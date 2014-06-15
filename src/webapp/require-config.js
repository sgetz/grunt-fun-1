require.config({
    baseUrl: 'app',
    deps: ['main'],
    paths: {
        //RequireJS Plugins
        glob: 'vendor/requirejs-glob/lib/glob',
        cs: 'vendor/require-cs/cs',

        "coffee-script": 'vendor/coffee-script/extras/coffee-script',
        jquery: 'vendor/jquery/dist/jquery',
        bootstrap: 'vendor/bootstrap/dist/js/bootstrap',
        angular: 'vendor/angular/angular',
        lodash: 'vendor/lodash/dist/lodash',
        "angular-deferred-bootstrap": 'vendor/angular-deferred-bootstrap/angular-deferred-bootstrap'
    },
    shim: {
        cs: {
          deps: ['coffee-script']

        },
        "coffee-script": {
          exports: 'CoffeeScript'
        },
        jquery: {
          'exports': '$'
        },
        bootstrap: {
            deps: ['jquery']
        },
        angular: {
            deps: ['jquery'],
            exports: 'angular'
        },
        "angular-deferred-bootstrap": {
          deps: ['angular'],
          exports: "deferredBootstrapper"
        },
        lodash: {
            exports: "_"
        }
    },
    glob: 'src/webapp/app/'
});