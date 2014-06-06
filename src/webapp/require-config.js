require.config({
    baseUrl: 'app',
    deps: ['main'],
    paths: {
        jquery: 'vendor/jquery/dist/jquery',
        bootstrap: 'vendor/bootstrap/dist/js/bootstrap',
        angular: 'vendor/angular/angular',
        lodash: 'vendor/lodash/dist/lodash'
    },
    shim: {
        bootstrap: {
            deps: ['jquery']
        },
        angular: {
            deps: ['jquery']
        },
        lodash: {
            exports: "_"
        }
    }
});