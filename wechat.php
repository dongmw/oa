<?php
$appid = "wx88570bde820a62ba";
$appsecret = "b068b37acfab85ba900bb1dc43b6fbee";
$url = "https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=$appid&secret=$appsecret";

$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, $url);
curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);
curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, FALSE);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
$output = curl_exec($ch);
curl_close($ch);
$jsoninfo = json_decode($output, true);
$access_token = $jsoninfo["access_token"];


$jsonmenu = '{
      "button":[
      {
           "name":"关于我们",
           "sub_button":[
            {
               "type":"click",
               "name":"长乐未央",
               "key":"whphp"
            },
            {
               "type":"view",
               "name":"我的信息",
               "url":"http://test.whphp.com/oauth.php"
            },
            {
               "type":"click",
               "name":"联系我们",
               "key":"联系我们"
            }]
       },
       {
           "name":"产品服务",
           "sub_button":[
            {
               "type":"click",
               "name":"微信平台",
               "key":"微信平台"
            },
            {
               "type":"click",
               "name":"微博应用",
               "key":"微博应用"
            },
            {
                "type":"click",
                "name":"手机网站",
                "key":"手机网站"
            }]
       },
       {
           "name":"技术支持",
           "sub_button":[
            {
               "type":"click",
               "name":"订单查询",
               "key":"dd"
            },
            {
               "type":"view",
               "name":"php技术交流",
               "url":"http://www.whphp.com"
            },
            {
                "type":"click",
                "name":"服务热线",
                "key":"服务热线"
            }]
       }]
 }';

$url = "https://api.weixin.qq.com/cgi-bin/menu/create?access_token=".$access_token;
$result = https_request($url, $jsonmenu);
var_dump($result);

function https_request($url,$data = null){
    $curl = curl_init();
    curl_setopt($curl, CURLOPT_URL, $url);
    curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, FALSE);
    curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, FALSE);
    if (!empty($data)){
        curl_setopt($curl, CURLOPT_POST, 1);
        curl_setopt($curl, CURLOPT_POSTFIELDS, $data);
    }
    curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
    $output = curl_exec($curl);
    curl_close($curl);
    return $output;
}