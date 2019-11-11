<?php 
namespace app\admin\behavior;
use think\Facade\Session;
// use think\Controller;
// use \traits\controller\Jump;

class CheckLogin{

	public function run(){
		if(!Session::get('currentUser') || Session::get('currentUser.is_admin')){
			// return false;
			return $this->redirect(url('admin/login/index'));
		}
	}

	public function appInit(){
		if(!(Session::get('currentUser.username','admin') || Session::get('currentUser.is_admin','admin'))){
			header('Location:http://weili.top/admin/login/index');die();
		}

	}
	public function appBegin(){
		if(!(Session::get('currentUser.username','admin') || Session::get('currentUser.is_admin','admin'))){
			header('Location:http://weili.top/admin/login/index');die();
		}
	}


}

 ?>