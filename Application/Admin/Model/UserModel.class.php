<?php
namespace Admin\Model;

use Think\Model\RelationModel;

class UserModel extends RelationModel
{
    protected $_validate = array(
        array('username', 'require', '用户名必须！'), //默认情况下用正则进行验证
        array('username', '', '帐号名称已经存在！', 0, 'unique', 1), // 在新增的时候验证name字段是否唯一
        array('password', 'require', '密码必须！'), //默认情况下用正则进行验证
        array('password', 'checkPwd', '密码格式不正确', 0, 'function'), // 自定义函数验证密码格式
        array('check_password', 'password', '确认密码不正确', 0, 'confirm'), // 验证确认密码是否和密码一致
    );

    protected $_auto = array(
        array('password', 'md5', 3, 'function'), // 对password字段在新增和编辑的时候使md5函数处理
        array('token', 'get_token', 1, 'callback'),
    );

    function get_token()
    {
        return md5(uniqid());
    }

    protected $_link = array(
        'Depart' => array(
            'mapping_type' => self::MANY_TO_MANY,
            'class_name' => 'Depart',
            'mapping_name' => 'departs',
            'foreign_key' => 'user_id',
            'relation_foreign_key' => 'depart_id',
            'relation_table' => 'user_depart' //此处应显式定义中间表名称，且不能使用C函数读取表前缀
        ),
        'Location' => array(
            'mapping_type' => self::BELONGS_TO,
            'class_name' => 'Location',
            'foreign_key' => 'user_id',
            'mapping_name' => 'locate',
            // 定义更多的关联属性

        ),
    );

    function all()
    {
        if (!F('users')) {
            $users = $this->relation(true)->select();
            F('users', $users);
        }
        return F('users');
    }
}
