<?php
namespace Home\Controller;
use Think\Controller;
class IndexController extends Controller {
    public function index(){
    	$db=M('zxmb');
		$count = $db->count();
		$page = new \Lib\Page($count);
		$limit = $page->firstRow.','.$page->listRows;
		$result = $db->limit($limit)->order('id DESC')->/*fetchSql(true)->*/select();
		$this->assign('result',$result);
		$this->page = $page->show();
		$this->display();
    }
}