/**
  *
  * 后台登录
  *
  */
$(document)
    .ready(function() {
      $("#login-form")
          .validate({
            errorPlacement : function(error, element) {
              error.addClass('help').appendTo(element.parent().parent());
            },
            errorElement : 'p',
            errorClass : "is-danger",
            rules : {
              admin_account : {required : true},
              admin_password : {required : true}
            },
            messages : {
              admin_account : {required : "请输入帐号"},
              admin_password : {required : "请输入密码"}
            }
          });
    });
