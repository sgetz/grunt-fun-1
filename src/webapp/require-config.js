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
        "angular-deferred-bootstrap": 'vendor/angular-deferred-bootstrap/angular-deferred-bootstrap',
        "angular-ui-router": 'vendor/angular-ui-router/release/angular-ui-router',
        "ng-animate": 'vendor/angular-animate/angular-animate',
        "mgcrea-ngStrap": 'vendor/angular-strap/dist/angular-strap',
        "mgcrea-ngStrap-tpl": 'vendor/angular-strap/dist/angular-strap.tpl'

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
        "angular-ui-router": {
            deps: ['angular']
        },
        "angular-deferred-bootstrap": {
          deps: ['angular'],
          exports: "deferredBootstrapper"
        },
        "ng-animate": {
          deps: ['angular']
        },
        "mgcrea-ngStrap": {
          deps: ['bootstrap', 'angular', 'ng-animate']
        },
        "mgcrea-ngStrap-tpl": {
          deps: ['bootstrap', 'angular', 'mgcrea-ngStrap']
        },
        lodash: {
            exports: "_"
        }
    },
    glob: 'src/webapp/app/'
});