/**
  *
  * 后台登录
  *
  */
$(document)
    .ready(function() {
      $("#class-form")
          .validate({
            errorPlacement : function(error, element) {
              error.addClass('help').appendTo(element.parent().parent());
            },
            errorElement : 'p',
            errorClass : "is-danger",
            rules : {sort_article_name : {required : true}},
            messages : {
              sort_article_name : {required : "请输入分类名称"},
            }
          });
    });
