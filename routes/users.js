var express = require('express');
var router = express.Router();
var mysql = require('mysql');
var connection = require('../database/connection');

/* GET users listing. */
router.get('/', function(req, res, next) {

  connection.connect(function(err) {
    if (err) {
      console.error('error connecting: ' + err.stack);
      return;
    }

    connection.query('select * from user', function(error, results, fields) {
      if (error) {
        throw error;
      }
      res.render('users', {results : results});
    });
    connection.end();
  });

});

module.exports = router;
