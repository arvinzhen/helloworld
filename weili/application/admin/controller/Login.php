<?php 
namespace app\admin\controller;

use think\Facade\Session;
use think\Controller;
use think\Request;
use think\Validate;
use think\captcha\Captcha;
use think\Db;
class Login extends Controller{
    protected $rule = ['__token__'=>'require|token'];
    /**
     * 检查是否登入 并且是管理员账号
     */
    public function index(Request $request){
        $data = $request->post();
        $tag = false;
        if(Session::get('currentUser.is_admin','admin')){
            $this->assign('username',Session::get('currentUser.username','admin'));
            $tag = true;
        }
        $this->assign('mz',$tag);
        return $this->fetch('login');
    }

    /**
     * LoginCheck
     */
    public function loginCheck(Request $request){
        $msg = [
            '__token__.require' => '非法进入',
            '__token__.token' => '非法进入',
        ];
        $thj = ['__token__' => $request->post('__token__')];
        $validate = new Validate();
        if(!$validate->check($thj)){
            echo ajson(0);die();
        }
        $code = $request->post('code');
        if(!captcha_check($code)) {
            echo ajson(1);die();
        }
        $username = $request->post('username');
        $password = jiami($request->post('password'));
        $tag = Db::table('users')->field('level')->where('username','=',$username)->where('userpwd','=',$password)->find();
        if(empty($tag)){
            echo ajson(0);die();
        }
        $level = $tag['level'];
        if($level < 3){
            echo ajson(3);die();
        }
        Session::set('currentUser.username',$username,'admin');
        Session::set('currentUser.level',$level,'admin');
        Session::set('currentUser.is_admin',true,'admin');
        echo ajson(2);die();
    }

    /**
     * 验证码
     */
    public function verify(){
        $config =    [
            'length'      =>    5,
        ];
        $captcha = new Captcha();
        return $captcha->entry();
    }
}

 ?>