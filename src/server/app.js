require('coffee-script/register');
var utils = require('./utils');
var config = require('./config');
var appPath = process.cwd();
var express = require('express');
var app = express();

//import / load db config/setup
var db = require('./db');
//import all models
utils.walk(appPath + '/src/server', 'model', null, function(path){
  console.log('requiring model '+ path);
  require(path);
});

//TODO: move to a separate setup file
var bodyParser = require('body-parser');
var cookieParser = require('cookie-parser');
var session = require('express-session');
var mongoStore = require('mean-connect-mongo')(session);
var methodOverride = require('method-override');
var logger = require('connect-logger');
var cors = require('connect-cors');
app.use(logger());
app.use(cookieParser());
app.use(bodyParser.json());
app.use(bodyParser.urlencoded());
app.use(methodOverride());
app.use(cors({origins:['*']}));

// Express/Mongo session storage
app.use(session({
  secret: config.sessionSecret,
  store: new mongoStore({
    db: db.connection.db,
    collection: config.sessionCollection
  }),
  cookie: config.sessionCookie,
  name: config.sessionName
}));


//import and mount all the routes
utils.walk(appPath + '/src/server', 'routes', null, function(path){
  console.log('import and mount route '+ path);
  require(path)(app);
});
//require('./routes')(app);

module.exports = app;