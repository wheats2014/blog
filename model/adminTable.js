/**
 * Created by ���� on 2017/4/23.
 */
var connection = require('../database/connection');
var table = require('../database/table');

var adminTable = {
  selectAll : function() {
    return connection.query('select * from ' + table.admin_table);
  }
};

module.exports = adminTable;
