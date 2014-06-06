require('coffee-script/register');
var express = require('express');
var app = express();

require('./routes')(app);


module.exports = app;