<?php
namespace Home\Controller;


use EasyWeChat\Foundation\Application;
class IndexController extends CommonController
{
    function __construct()
    {
        parent::__construct();
        $this->check();
        $this->user = M('user');
    }

    public function index()
    {
        //dd($_SESSION);
        $users = $this->user->limit(0, 4)->order('id')->select();
        $this->assign('users', $users);
        $this->display();
    }

    public function more()
    {
        $page = I('post.page');
        $min = ($page - 1) * 4;
        $peoples = $this->user->limit($min, 4)->order('id')->select();
        $this->success($peoples);
    }

    public function show()
    {
        $app = new Application(C('wechat'));
        $js = $app->js;
        //$js->config(array $APIs, $debug = false, $beta = false, $json = true);
        $id = I("get.id");
        $user = $this->user->find($id);
        $this->assign('user',$user);
        $this->assign('js',$js);
        $this->display();
    }

     public function jssdk(){
        $appid = 'wx70ca6014aa920e63';
        $secret = 'b068b37acfab85ba900bb1dc43b6fbee';
        $_title = '微信';
        $code = $_GET['code'];//获取code
        $_SESSION['code'] = $code;//设置code缓存给微信付账使用
        $auth = file_get_contents("https://api.weixin.qq.com/sns/oauth2/access_token?appid=".$appid."&secret=".$secret."&code=".$code."&grant_type=authorization_code");//通过code换取网页授权access_token
        $jsonauth = json_decode($auth); //对JSON格式的字符串进行编码
        $arrayauth = get_object_vars($jsonauth);//转换成数组
        $openid = $arrayauth['openid'];//输出openid
        $access_token = $arrayauth['access_token'];
        $_SESSION['openid'] = $openid;

        $accesstoken = file_get_contents("https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=".$appid."&secret=".$secret."");//获取access_token
        $token = json_decode($accesstoken); //对JSON格式的字符串进行编码
        $t = get_object_vars($token);//转换成数组
        $access_token = $t['access_token'];//输出access_token

        $jsapi = file_get_contents("https://api.weixin.qq.com/cgi-bin/ticket/getticket?access_token=".$access_token."&type=jsapi");
        $jsapi = json_decode($jsapi);
        $j = get_object_vars($jsapi);
        $jsapi = $j['ticket'];//get JSAPI

        $time = 14999923234;
        $noncestr= $time;
        $jsapi_ticket= $jsapi;
        $timestamp=$time;
        $url='http://'.$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI'];
        $and = "jsapi_ticket=".$jsapi_ticket."&noncestr=".$noncestr."&timestamp=".$timestamp."&url=".$url."";
        $signature = sha1($and);
        return $signature;
    }


}