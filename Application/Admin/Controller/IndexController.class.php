<?php
namespace Admin\Controller;
use Think\Controller;

class IndexController extends CommonController {
	/**
 	* 后台上传模板页面
 	*/
    public function index(){
        $needadmin = needadmin();
        $this->assign('needadmin',$needadmin);
        $this->display();
    }
    public function delmuban(){
       $needadmin = needadmin();
        $this->assign('needadmin',$needadmin);

        $db = M('zxmb');
        $count = $db->count();
        $page = new \Lib\Page($count);
        $limit = $page->firstRow.','.$page->listRows;
        $result = $db->order('id DESC')->limit($limit)->select();
        $this->assign('result',$result);
        $this->page = $page->show();
        $this->display();
    }

}