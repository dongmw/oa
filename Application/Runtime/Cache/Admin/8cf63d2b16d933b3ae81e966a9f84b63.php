<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<style>
    .error{
        color:red;
    }
</style>
<head lang="en">
    <meta charset="UTF-8">
    <title>Login Page | Amaze UI Example</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="format-detection" content="telephone=no">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
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
        <h1>发送邮件</h1>
        <p>Integrated Development Environment<br/>代码编辑，代码生成，界面设计，调试，编译</p>
    </div>
    <hr />
</div>
<div class="am-g">
    <div class="am-u-lg-6 am-u-md-8 am-u-sm-centered">
        <h3>发送邮件</h3>
        <hr>
        <div class="am-btn-group">
        </div>
        <br>
        <br>

        <form id="reset_password" method="post" action="/Admin/User/password.html?key=fdbf1ead74e5e1e6ba2aea6efdbb23a0" class="am-form">
            <label for="password">新密码:</label>
            <input type="password" name="password" id="password" value="" class="required" >
            <br>
            <label for="password">确认新密码:</label>
            <input type="password" name="check_password" id="check_password" value="" class="required" equalTo="#password" >
            <br>


            <br />
            <div class="am-cf">
                <input type="submit" name="" value="确 认" class="am-btn am-btn-primary am-btn-sm am-fl">

            </div>
        </form>
        <hr>
        <p>© 2014 AllMobilize, Inc. Licensed under MIT license.</p>
    </div>
</div>
<script src="/Public/assets/js/jquery.min.js"></script>
<script src="/Public/assets/js/jquery.validate.min.js"></script>
<script src="/Public/assets/js/jquery.validate.js"></script>
<script src="/Public/assets/js/messages_zh.min.js"></script>
<script>
    $(function () {
        $("#reset_password").validate({
            onfocusout: function(element){
                $(element).valid();
            }
        });

    })
</script>
</body>
</html>