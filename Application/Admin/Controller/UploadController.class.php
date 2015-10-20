<?php 
namespace Admin\Controller;
use Think\Controller;
/**
 * 后台CURD控制器
 */
class UploadController extends Controller{
	/**
	 * 模板上传控制器
	 */
	public function upload(){
		if(!IS_POST) E('无效的页面');
		$upload = new \Think\Upload();// 实例化上传类
	    $upload->maxSize   =     31457280 ;// 设置附件上传大小
	    // $upload->exts      =     array('jpg', 'gif', 'png', 'jpeg','rar','zip');// 设置附件上传类型
	    $upload->rootPath  =     './Public/'; // 设置附件上传根目录
	    $upload->savePath  =     '/Muban/'; // 设置附件上传（子）目录
	    // 上传文件 
	    $info   =   $upload->upload();//上传文件数据，包括保存地址，保存名称等。
	    $data = array(			//写入数据库数据
	    		'suolue' => $info['suolue']['savepath'].$info['suolue']['savename'] ,
	    		'yetou' =>  $info['yetou']['savepath'].$info['yetou']['savename'],
	    		'dianzhao' => $info['dianzhao']['savepath'].$info['dianzhao']['savename'] ,
	    		'beijing' =>  $info['beijing']['savepath'].$info['beijing']['savename'],
	    		'datu' =>  $info['datu']['savepath'].$info['datu']['savename'],
	    		'orther' =>  $info['orther']['savepath'].$info['orther']['savename'],
	    		'uper' => session('name'),
	    		'time' =>  time(),
	    		);
	    $db = M('zxmb');

		$result = $db->data($data)->add();
	    // echo "<pre>".print_r($result,true)."</pre>";
	    if($result){
			$this->success('添加成功',U('/Admin/Index/index'));
		}else{
			$this->error('添加失败');
		}
	    
	}
	/**
	 * 模板库删除控制器
	 */
	public function delete(){
		if(!IS_POST) E('无效的页面');
		$delid = I('delid');
		$db = M('zxmb');
		// $where = array('id'=>$id);
		// $select = $db->field('suolue,yetou,dianzhao,beijing,datu,orther')->where($where)->select();
		// foreach ($select as $v) {
		// 	foreach ($v as $k) {
		// 		$file = 'Public'.$k;
		// 		echo $file .'<br>';
		// 		// unlink($file);
		// 	}
		// }
		foreach ($delid as $v) {
			$select = $db->field('suolue,yetou,dianzhao,beijing,datu,orther')->where("id=$v")->select();
			foreach ($select as $j) {
				foreach ($j as $k) {
					$file = 'Public'.$k;
					unlink($file);
				}
			}
			$result = $db->where("id=$v")->delete();
		}
		if($result){
			$this->success('删除成功',U('/Admin/Index/index'));
		}else{
			$this->error('删除失败');
		}
	}
	
 }
 ?>
