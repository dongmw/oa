<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>Login Page | Amaze UI Example</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="format-detection" content="telephone=no">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <link rel="alternate icon" type="image/png" href="/Public/assets/i/favicon.png">
    <link rel="stylesheet" href="/Public/assets/css/amazeui.min.css"/>
    <style>
        .header {
            text-align: center;
        }

        .header h1 {
            font-size: 200%;
            color: #333;
            margin-top: 30px;
        }

        .header p {
            font-size: 14px;
        }
    </style>
</head>
<body>
<div class="header">
    <div class="am-g">
        <h1>OA管理开发</h1>
        <p>校园OA管理系统<br/>itisshow</p>
    </div>
    <hr/>
</div>
<div class="am-g">
    <div class="am-u-lg-6 am-u-md-8 am-u-sm-centered">
        <h3>登录</h3>
        <hr>

        <br>
        <br>

        <form id="login" method="post" class="am-form" action="<?php echo U('do_login');?>">
            <div class="am-form-group am-form-icon am-form-feedback">
                <label class="am-form-label">用户名：</label>

                <input placeholder="请输入用户名：" type="text" id="name" name="username" class="am-form-field required" value=""
                       required
                       autofocus>


            </div>

            <div class="am-form-group am-form-icon am-form-feedback">

                <span class="help-block">
                        <label class="am-form-label">密码：</label>
                    </span>
                <input placeholder="请输入用户密码：" type="password" id="password" name="password" class="required am-form-field"
                       required>


            </div>

            <div class="am-form-group am-form-icon am-form-feedback">
                <span class="help-block">
                        <label class="am-form-label">验证码：</label>
                </span>
                <div style="margin: 10px auto;" id="captcha_div"></div>
                <!--<div class="am-g">-->
                <!--<div class="am-u-sm-8">-->
                <!--<input placeholder="验证码" type="text" id="code" name="code" class="am-form-field" required>-->
                <!--</div>-->
                <!--<div class="am-u-sm-4">-->
                <!--<img style="cursor: pointer" src="" class="code">-->
                <!--</div>-->
                <!--</div>-->
            </div>
            <br>
            <label for="remember-me">
                <input id="remember-me" type="checkbox" name="rem" value="1">
                记住密码
            </label>
            <br>
            <br>
            <div class="am-cf">
                <input type="submit" name="" value="登 录" class="am-btn am-btn-primary am-btn-sm am-fl">
                <a href="<?php echo U('email');?>" class="am-btn am-btn-default am-btn-sm am-fr">
                    忘记密码 ^_^?
                </a>
            </div>
        </form>
        <hr>
        <p>© 2014 AllMobilize, Inc. Licensed under MIT license.</p>
    </div>
</div>
<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
<script src="/Public/assets/js/jquery.min.js"></script>
<script src="http://c.dun.163yun.com/js/c.js"></script>
<script src="/Public/assets/js/amazeui.min.js"></script>
<script src="/Public/assets/js/jquery.validate.min.js"></script>
<script src="/Public/assets/js/jquery.validate.js"></script>
<script src="/Public/assets/js/messages_zh.min.js"></script>
<script src="/Public/assets/js/jquery.form.js"></script>
<script>
    $(function () {
        //第三方验证码
        var opts = {
            "element": "captcha_div", // 可以是验证码容器id，也可以是HTMLElement
            "captchaId": "2bc3ef4d53a8413faf4ed5afef185e53", // 这里填入申请到的验证码id
            "width": 320, // 验证码组件显示宽度
            "verifyCallback": function (ret) { // 用户只要有拖动/点击，就会触发这个回调
                if (ret['value']) { // true:验证通过 false:验证失败
                    // 通过 ret["validate"] 可以获得二次校验数据
                    $("#submit-btn").removeAttr("disabled"); // 用户完成拖动之后再启用提交按钮
                }
            }
        }
        new NECaptcha(opts);
        //validate前端验证
        $("#login").validate({
                 onfocusout: function(element){
                     $(element).valid();
                 }
         });
        //ajaxForm的验证
        $('button').on('click', function() {

            $('form').on('submit', function() {
                var title = $('input[name=title]').val(),
                        content = $('textarea').val();

                $(this).ajaxSubmit({
                    type: 'post', // 提交方式 get/post
                    url: 'your url', // 需要提交的 url
                    data: {
                        'title': title,
                        'content': content
                    },
                    success: function(data) { // data 保存提交后返回的数据，一般为 json 数据
                        // 此处可对 data 作相关处理
                        alert('提交成功！');
                    }
                    $(this).resetForm(); // 提交后重置表单
            });
                return false; // 阻止表单自动提交事件
            });
        });

    })
</script>
</body>
</html>