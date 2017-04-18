<?php
namespace Home\Controller;
use Think\Controller;
use EasyWeChat\Foundation\Application;
class CommonController extends controller
{
    public function check()
    {
        $app = new Application(C('wechat'));
        $oauth = $app->oauth;
        // 未登录
        if (empty($_SESSION['wechat_user'])) {
            $_SESSION['target_url'] = '/';
            $oauth->redirect()->send();
        }
    }

    public function oauth_callback()
    {
        $app = new Application(C('wechat'));
        $oauth = $app->oauth;
        $user = $oauth->user();
        $_SESSION['wechat_user'] = $user->toArray();
        $targetUrl = empty($_SESSION['target_url']) ? '/' : $_SESSION['target_url'];
        header('location:'. $targetUrl); // 跳转到 user/profile
    }


}