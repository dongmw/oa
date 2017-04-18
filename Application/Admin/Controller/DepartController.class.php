<?php
namespace Admin\Controller;

use Think\Controller;

class DepartController extends Controller
{
    var $depart;
    public function __construct()
    {
        parent::__construct();
        $this->depart = D('Depart');
    }

    public function index()
    {
        $departs = $this->depart->all();
        //var_dump($departs);
        $this->assign('departs',$departs);
        $this->display();
    }

    public function add()
    {
        if($_POST){
            $this->depart->create();
            $this->depart->add();
            $this->redirect('index');
        }else{
            $departs = $this->depart->where('parent_id=0')->select();
            $this->assign('departs',$departs);
            $this->display();
        }

    }

    public function edit($id)
    {

        if ($_POST){

            $Depart = D("Depart");
            $Depart->create();
            $Depart->save();
            F('departs', NULL);
            $this->redirect('index');
        }else{
            $id = I("get.id");
            $departs = $this->depart->all();
            $this->assign("departs", $departs);
            $depart = $this->depart->find($id);

            $this->assign('depart', $depart);
//                        dd($depart);
//            exit();
            $this->display();

        }

    }

    public function delete()
    {

    }

}