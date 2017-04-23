/**
 * Created by Íõº÷ on 2017/4/23.
 */
var connection = require('../database/connection');
var table = require('../database/table');
function adminTable(){

    function selectAll(){
        rows = connection.query('select * from '+table.admin_table);
        return rows;
    }
}