require('coffee-script/register');
var express = require('express');
var app = express();

require('./routes')(app);

//TODO move the cores config to different file
app.all("*", function(req, res, next) {
  res.header("Access-Control-Allow-Origin", req.headers.origin);
  res.header("Access-Control-Allow-Credentials", "true");
  res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
  next();
});


module.exports = app;