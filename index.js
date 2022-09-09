var express = require('express');

//const PORT = 8888;

var app = express();

app.get('/', function (req, res) {
  console.log(req);
  res.send('Bienvenido');
});

app.get('/:name', function (req, res) {
  console.log(req);
  res.send('Hola ' + req.params.name);
});

const APP_PORT = process.env.PORT;

var listener = app.listen(APP_PORT, function(){
  console.log('Listening on port ' + listener.address().port); //Listening on port APP_PORT
});

