<?php 
namespace Admin\Controller;
use Think\Controller;
Class LoginController extends Controller{
	Public function index(){
		$this->display();
		}
	//登录验证
	Public function login(){
		if (!IS_POST) E('无效的页面');
		 $db=M('login');
		 $user=$db->where(array('username'=>I('username')))->find();
		 if (!$user || $user['password'] != I('password','',md5)) {
		 	$this->error('账号或密码错误');
		 }
		 //更新最后一次登录时间及IP
		 $data=array(
		 	'id'=>$user['id'],
		 	'logintime' => time(),
		 	'loginip'=> get_client_ip()
		 	);
		$db->save($data);

		session('uid',$user['id']);
		session('username',$user['username']);
		session('name',$user['name']);
		session('logintime',date('Y-m-d H:i:s',$user['logintime']));
		session('loginip',$user['loginip']);
		if ($user['jd'] == '1') {
			session('admin','1');
		}else{
			session('admin','0');
		}
		if(I('username') == 'admin'){
			session('iadmin',1);
		}else{
			session('iadmin',0);
		}
		$this->redirect('/Admin/Index/index');
	}

	//登出
	Public function loginout(){
		session(null);
		$this->success('您已安全退出', U('/Admin/Login/index'));
	}	
		
}
 ?>