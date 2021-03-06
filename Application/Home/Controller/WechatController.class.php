<?php
namespace Home\Controller;
use Think\Controller;
use EasyWeChat\Foundation\Application;
class WechatController extends Controller
{
    public function serve()
    {
        $app = new Application(C('wechat'));
        $server = $app->server;

        $server->setMessageHandler(function ($message) {
            switch ($message->MsgType) {
                case 'event':
                    return '收到事件消息';
                    break;
                case 'text':
                    return '收到文字消息';
                    break;
                case 'image':
                    return '收到图片消息';
                    break;
                case 'voice':
                    return '收到语音消息';
                    break;
                case 'video':
                    return '收到视频消息';
                    break;
                case 'location':
                    return '收到坐标消息';
                    break;
                case 'link':
                    return '收到链接消息';
                    break;
                // ... 其它消息1
                default:
                    return '收到其它消息';
                    break;
            }

        });

        $response = $app->server->serve();
        $response->send();
    }

}