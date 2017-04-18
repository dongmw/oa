<?php
namespace Admin\Controller;

use Think\Controller;

class UserController extends Controller
{
    var $user;
    var $info;
    var $path;
    var $savePath;
    var $secretKey = 'fa083d9b5025341e4295aabf428dff35';
    var $params;

    var $ExcelReader;
    var $objWriteHTML;

    public function __construct()
    {
        parent::__construct();
        $this->user = D('user');
        $this->depart = D('depart');
        $this->reset_password = M('reset_password');
        $secretKey = 'fa083d9b5025341e4295aabf428dff35';


    }

    function gen_signature($secretKey, $params)
    {
        ksort($params);
        $buff = "";
        foreach ($params as $key => $value) {
            $buff .= $key;
            $buff .= $value;
        }
        $buff .= $secretKey;
        return md5(mb_convert_encoding($buff, "utf8", "auto"));
    }

    public function register()
    {
        $this->display();
    }

    public function do_register()
    {
        $User = D("User"); // 实例化User对象
        if (!$User->create()) {
            $this->error($User->getError());
        } else {
            $User->add();
            $this->success('注册成功', U('login'));
        }
    }

    public function login()
    {
        $this->display();
    }

    public function do_login()
    {
//        $code = I("post.code");
//        if (!$this->check_verify($code)) {
//            $this->error('验证码错误');
//        }

        $data['username'] = I('post.username');
        $data['password'] = md5(I('post.password'));
        $User = M("User");
        $user = $User->where($data)->find();
        if (!$user) {
            $this->error('账号或密码错误');
        }

        $token = $user['token'];
        //判断是否需要记住密码
        if (isset($_POST['rem'])) {
            setcookie('token', $token, time() + 60 * 60 * 24 * 7, '/');
        } else {
            setcookie('token', $token, null, '/');
        }

        $this->success('登录成功', U('Index/index'));
    }

//    //生成验证码
//    public function verify()
//    {
//        $config = array(
//            'length' => 4,     // 验证码位数
//            'codeSet' => '0123456789',
//        );
//        $Verify = new \Think\Verify($config);
//        $Verify->entry();
//    }
//
//    //验证码检测
//    function check_verify($code, $id = '')
//    {
//        $verify = new \Think\Verify();
//        return $verify->check($code, $id);
//    }

    function logout()
    {
        $_SESSION = array();

        //session_name(), cookie中储存的session标识, 即key
        if (isset($_COOKIE[session_name()])) {
            setcookie(session_name(), "", time() - 3600, "/");
        }

        if (isset($_COOKIE['token'])) {
            setcookie("token", "", time() - 3600, "/");
        }
        $this->success('您已经安全退出');
    }

    public function index()
    {
        //模糊查询
        $username = $_GET['username'];
        $data['username'] = array('like', "%" . $username . "%");
        //分页
        $User = D('User');
        $count = $User->where('status=1')->count();
        $Page = new \Think\Page($count, 3);
        $show = $Page->show();
        $users = $User->relation(true)->where($data)->order('id')->limit($Page->firstRow . ',' . $Page->listRows)->select();
        foreach ($users as &$user) {
            $departs = array_column($user['departs'], 'name');
            $user['departs'] = implode(',', $departs);
        }
//        dd($users);
//        exit;
        $this->assign('users', $users);
        $this->assign('page', $show);
        $this->display();

//        $username = $_GET['username'];
//        $data['username'] = array('like', "%" . $username . "%");
//        $users = $this->user->relation(true)->where($data)->select();
//        $this->assign('users', $users);
//        $this->display();
    }

    public function add()
    {
        if ($_POST) {
            $upload = new \Think\Upload();// 实例化上传类
            $upload->maxSize = 3145728;// 设置附件上传大小
            $upload->exts = array('jpg', 'gif', 'png', 'jpeg', 'xlsx', 'xlsm', 'xltx', 'xltm', 'xlsb', 'xlam');// 设置附件上传类型
            $this->path = $upload->rootPath = './Uploads/'; // 设置附件上传根目录
            $this->savePath = $upload->savePath = ''; // 设置附件上传（子）目录
            // 上传文件
            $info[0] = $upload->uploadOne($_FILES['photo1']);
            $info[1] = $upload->uploadOne($_FILES['photo2']);
            if (!$info[0] or !$info[1]) {// 上传错误提示错误信息
                $this->error($upload->getError());
                echo $info;
                return false;
            }
            $data = array();
            $data["username"] = I("post.username");
            $data["sex"] = I("post.sex");
            $data["age"] = I("post.age");
            $data["time"] = I("post.time");
            $data['thumb'] = $this->path . $info[0]['savepath'] . $info[0]['savename'];
            $data['file'] = $this->path . $info[1]['savepath'] . $info[1]['savename'];
            $data["location"] = I("post.location");
            $data["departs"] = I("post.depart_id");
            dd($data);
            $this->user->relation(true)->add($data);
            $this->redirect('index');
        } else {
            $departs = $this->depart->all();
            $this->assign('departs', $departs);
            $this->display();
        }
    }


    public function edit()
    {
        if ($_POST) {
            $this->user->create();
            $this->user->save();
            F('users', NULL);
            $this->redirect('index');
        } else {
            $departs = $this->depart->all();
            $this->assign('departs', $departs);
            $id = I("get.id");
            $user = $this->user->relation(true)->find($id);
            $this->assign('user', $user);
            $this->display();
        }
    }

    public function delete()
    {

    }

    public function export()
    {
        import("ORG.Yufan.Excel");
        $list = D('user')->relation(true)->select();
        foreach ($list as &$l) {
            $departs = array_column($l['departs'], 'name');
            $l['departs'] = implode(',', $departs);
        }
        $row = array();
        $row[0] = array('序号', 'id', '用户名', '部门', '年龄', '性别', '职位', '时间');
        $i = 1;
        foreach ($list as $v) {
            $row[$i]['i'] = $i;
            $row[$i]['id'] = $v['id'];
            $row[$i]['username'] = $v['username'];
            $row[$i]['departs'] = $v['departs'];
            $row[$i]['age'] = $v['age'];
            $row[$i]['sex'] = $v['sex'];
            $row[$i]['location'] = $v['location'];
            $row[$i]['time'] = date("Y-m-d H:i:s", $v['time']);
            $i++;
        }

        $xls = new \Excel_XML('UTF-8', false, 'datalist');
        $xls->addArray($row);
        $xls->generateXML("yufan956932910");
    }

    public function see()
    {
        //include_once ".;F:\wamp64\www\ThinkPhpWechat\ThinkPHP\Library\Org\Yufan\PHPExcel.class.php";
        import("Org.Yufan.PHPExcel");
        $objPHPExcel = new \PHPExcel();

        $objPHPExcel
            ->getProperties()//获得文件属性对象，给下文提供设置资源
            ->setCreator("Maarten Balliauw")//设置文件的创建者
            ->setLastModifiedBy("Maarten Balliauw")//设置最后修改者
            ->setTitle("Office 2007 XLSX Test Document")//设置标题
            ->setSubject("Office 2007 XLSX Test Document")//设置主题
            ->setDescription("Test document for Office 2007 XLSX, generated using PHP classes.")//设置备注
            ->setKeywords("office 2007 openxml php")//设置标记
            ->setCategory("Test result file");                //设置类别
// 位置aaa  *为下文代码位置提供锚
// 给表格添加数据
        $objPHPExcel->setActiveSheetIndex(0)//设置第一个内置表（一个xls文件里可以有多个表）为活动的
        ->setCellValue('A1', 'Hello')//给表的单元格设置数据
        ->setCellValue('B2', 'world!')//数据格式可以为字符串
        ->setCellValue('C1', 12)//数字型
        ->setCellValue('D2', 12)//
        ->setCellValue('D3', true)//布尔型
        ->setCellValue('D4', '=SUM(C1:D2)');//公式

//得到当前活动的表,注意下文教程中会经常用到$objActSheet
        $objActSheet = $objPHPExcel->getActiveSheet();
// 位置bbb  *为下文代码位置提供锚
// 给当前活动的表设置名称
        $objActSheet->setTitle('Simple2222');

        $objWriter = \PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel2007');
        $objWriter->save('myexchel.xlsx');

        // 生成2003excel格式的xls文件
        header('Content-Type: application/vnd.ms-excel');
        header('Content-Disposition: attachment;filename="01simple.xls"');
        header('Cache-Control: max-age=0');

        $objWriter = \PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel5');
        $objWriter->save('php://output');
        exit;
//        $objExcel = new \PHPExcel();
//
//        $objWriter = new \PHPExcel_Writer_Excel5($objExcel);
//
//        $objWriteHTML = new \PHPExcel_Writer_HTML($objExcel);
//        $objWriteHTML -> save("php://output");

    }

    public function email()
    {
        if ($_POST) {
            $map ['email'] = $_POST ['email'];
            $info = $this->user->where($map)->find();
            if ($info) {
                ////$this->success ( '发送成功...', U ( 'Email/email' ), 2 );
                $key = md5($info ['username'] . '+' . $info ['password']); // MD5不可逆，验证$string中username，防止URL更改username
                //$string = base64_encode ( $info ['username'] . '+' . $key ); // 加密，可解密
                //$time = time();
                //$code = md5('mytime' . $time);
                //把key存入数据库
                $data = [];
                $data['email'] = $map['email'];
                $data['key'] = $key;
                $this->reset_password->add($data);
                // 生成URL
                $findpwd = $_SERVER ['HTTP_HOST'] . U('User/password') . '?key=' . $key; // code是用来检验time是否有修改过
                // 调用发送邮件函数
                $username = $info ['username'];
                $title = "找回密码";
                $content = "<h3>亲爱的：$username 用户</h3>
			<br><br><a href=\"http://$findpwd\">点击找回密码</a>
			<br><br><br><h4>有效期30分钟</h4>
			<br><br>
			<img src='http://www.huabian.com/uploadfile/2014/0716/20140716101245193.jpg'>";
                $from = "943113712@qq.com"; //修改为你的发送邮箱
                $to = $info ['email'];
                $status = send_mail($title, $content, $from, $to);
                if ($status == 1) {
                    $this->success('发送邮件成功...', U('User/email'), 2);
                } else {
                    $this->error('发送邮件失败...');
                    exit ();
                }
            } else {
                $this->error('此邮箱未注册');
                exit ();
            }
        } else {
            $this->display();
        }
    }

    public function password()
    {
        $User = D('User');
        $data['key'] = I('get.key');
        $info = $this->reset_password->where($data)->find();
        $email = $info['email'];
        if ($info) {
            if ($_POST) {
                $password = md5(I('post.password'));
                $user = $User->where("email='$email'")->find();
                $id = $user['id'];
                $User->where("id='$id'")->setField("password", $password);
                $this->success('修改成功！', 'login');
            } else {
                $this->display();
            }
        }
    }
}