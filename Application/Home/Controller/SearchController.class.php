<?php 
namespace Home\Controller;
use Think\Controller;
/**
 * 搜索与统计控制器
 */
Class SearchController extends Controller{
	//搜索客户表单处理
		Public function searched(){
		if (!IS_POST) E('无效的页面');
		$arr = I('searched','',trim);
		$where = array(
			'uper'=>$arr,
			'id'=>$arr,
			'_logic'=>'or'
			);
		$db=M('zxmb');
		$count = $db->count();
		$page = new \Lib\Page($count);
		$limit = $page->firstRow.','.$page->listRows;
		$searched = $db->where(array($where))->limit($limit)->order('id DESC')->/*fetchSql(true)->*/select();
		$this->assign('searched',$searched);
		$this->assign('needadmin',needadmin());
		$this->page = $page->show();
		$this->display();
	}
	//统计页面
	// Public function counts(){
	// 	$db = M('customer');
	// 	$maxdb = $db->max('uid');
	// 	for ($i=0; $i <= $maxdb ; $i++) { 
	// 		$where = array('uid' =>$i);
	// 		$vcount = $db->where($where)->count('uid');
	// 		if($vcount != 0){
	// 			$count["$i"] = $vcount ;
	// 		}
	// 	}

	// 	$sum = array_sum($count);
	// 	$width = 100/$sum;
	// 	$dbc = M('login');
	// 	$username = $dbc->field('id,name,username')->select();
	// 	$this->assign('needadmin',needadmin());
	// 	$this->assign('username',$username);
	// 	$this->assign('count',$count);
	// 	$this->assign('sum',$sum);
	// 	$this->assign('width',$width);
	// 	$this->display();
	// }
}
?>
	