require('coffee-script/register');
var express = require('express');
var app = express();

//TODO: move to a separate setup file
var bodyParser = require('body-parser');
var cookieParser = require('cookie-parser');
var session = require('express-session');
var methodOverride = require('method-override');
var logger = require('connect-logger');
var cors = require('connect-cors');

app.use(logger());
app.use(bodyParser.json());
app.use(bodyParser.urlencoded());
app.use(cookieParser());
app.use(session({ secret: 'cool beans' }));
app.use(methodOverride());
app.use(cors({origins:['*']}));

//import and mount all the routes
require('./routes')(app);

module.exports = app;