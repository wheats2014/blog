var express = require('express');
var router = express.Router();
var connection = require('../database/connection');

// 显示登录页面
router.get('/', function(req, res, next) { res.render('login'); });

// 显示分类页面
router.get('/class', function(req, res, next) { res.render('class_list'); });

// 显示分类添加页面
router.get('/classAdd', function(req, res, next) { res.render('class_add'); });

// 显示文章页面
router.get('/article', function(req, res, next) { res.render('article'); });

// 验证登录
router.post('/login', function(req, res, next) {

  let adminAccount = req.body.admin_account;
  let adminPassword = req.body.admin_password;

  connection.query(
      `select * from admin where admin_account='${adminAccount}' and admin_password='${adminPassword}'`,
      function(err, rows, fields) {
        if (err) {
          throw err;
        }

        if (rows.length) {
          for (var k in rows) {
            console.log();
          }
          req.session.adminAccount = rows[0].adminAccount;
          res.redirect('/');
        } else {
        }
      });
});
module.exports = router;
