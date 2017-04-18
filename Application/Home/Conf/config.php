<?php
return array(
    'wechat' => [
        'debug' => true,
        'app_id' => 'wx70ca6014aa920e63',
        'secret' => 'b068b37acfab85ba900bb1dc43b6fbee',
        'token'  => 'weixin',
        'oauth' => [
            'scopes'   => ['snsapi_userinfo'],
            'callback' => '/home/common/oauth_callback',
        ],

    ]
);