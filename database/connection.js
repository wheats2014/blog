var mysql = require('mysql');
var connection = mysql.createConnection(require('../config/db_config'));

module.exports = connection;
