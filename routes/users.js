var express = require('express');
var router = express.Router();
//var mysql = require('mysql');
//var connection = require('../database/connection');

router.get('/', function(req, res, next) {

  var adminTable = require('../model/adminTable.js');
  console.log(adminTable.selectAll());

  //connection.query('select * from user', function(err, rows, fields) {
  //  if (err)
  //    throw err;
  //  res.render('users', {results : rows[0]});
  //});

});

module.exports = router;
