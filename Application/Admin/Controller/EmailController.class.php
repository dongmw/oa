<?php
namespace Admin\Controller;
use Think\Controller;

class EmailController extends Controller
{
    function all_email()
    {
        \Predis\Autoloader::register();

        $email = M('user')->getField('email',true);
        $count = count($email);
        $redis = new \Predis\Client();
        $redis->connect('127.0.0.1',6379);
        for ($x=0;$x<$count;$x++){
            $list = $email[$x];
            //入队
            $redis->rpush('email_lists',$list);
        }
        //出队
        $data['email'] = $redis->lpop('email_lists');
        if ($data){
            dd($data);
            M('email')->add($data);
        }
    }
}