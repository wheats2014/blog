var connection = require('../database/connection');
connection.query(
    `select * from admin where admin_account='${adminAccount}' and admin_password='${adminPassword}'`,
    function(err, rows, fields) {
      if (err) {
        throw err;
      }

      if (rows.length) {
        req.session.adminAccount = rows[0].adminAccount;
        res.redirect('/');
      } else {
      }

    });
