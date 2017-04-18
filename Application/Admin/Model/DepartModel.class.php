<?php
namespace Admin\Model;

use Think\Model\RelationModel;

class DepartModel extends RelationModel
{
    protected $_link = array(
        'Depart' => array(
            'mapping_type'  => self::HAS_MANY,
            'mapping_name'  => 'children',

        ),
    );

    function all()
    {
        if (!F('departs')){
            $departs = $this->relation(true)->where("parent_id=0")->select();
            F('departs', $departs);
        }
        return F('departs');
    }




}





