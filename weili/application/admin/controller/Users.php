<?php

namespace app\admin\controller;

use think\Facade\Session;
use think\Controller;
use think\Request;
use think\Validate;
use think\Facade\Hook;
use think\DB;

class Users extends Controller
{
	/**
     * Session::get('currentUser.level')为当前的level
     */
    protected function initialize(){
        Hook::add('app_begin','app\\admin\\behavior\\CheckLogin');
        Hook::listen('app_begin');
    }

    /**
     * 显示资源列表
     *
     * @return \think\Response
     */
    public function index()
    {
        $selflevel = Session::get('currentUser.level','admin');
        $condtion = [];$query = [];
        $condition[] = ['level','<',$selflevel];
        $username = $this->request->get('username');
        if($username){
            $condition[] = ['username','=',$username];
            $query['username'] = $username;
        }
        $level = $this->request->get('level');
        if($level && $level <= $selflevel){
            $condition[0] = ['level','=',$level];
            $query['level'] = $level;
        }
        $this->assign('len',$selflevel);
        $res = Db::table('users')->field('id,level,username,releasetime')->where($condition)->paginate(1,false,['query'=>$query])->each(function($item,$key){
            $item['releasetime'] = sj($item['releasetime']);
            return $item;
        });
        $this->assign('data',$res);
        return $this->fetch();
    }

    /**
     * 注册管理员.
     *
     * @return \think\Response
     */
    public function create()
    {
    	//还没有 改  根据当前用户等级 来生成type=radio显示的个数 级别越高 显示的选项就越多
        return $this->fetch();
    }

    /**
     * 保存新建的资源
     *
     * @param  \think\Request  $request
     * @return \think\Response
     */
    public function save(Request $request)
    {
    	$coded = ['__token__'=>$request->post('__token__')];
    	$msg = [
    		'__token__.require' => '非法进入',
    		'__token__.token'   =>'非法进入',
    	];
    	$validate = new Validate();
    	if(!$validate->check($coded)) {
    		echo ajson($validate->getError());die();
    	}
    	// if(Session::get('level') < 2) {//小于7级没有权限添加用户
    	// 	echo ajson(0);die();
    	// }
    	//user表加个 level
        //check 权限 特定权限才能创建管理员账号
        $username = $request->post('username');
        if(!$username){echo ajson('用户名不能为空');die();}
        $checkname = Db::table('users')->where('username','=',$username)->find();
        if($checkname){
        	echo ajson('用户名已经存在');die();
        }
        $pass = $request->post('pass');
        if(!$pass){echo ajson('密码不能为空');die();}
        $repass = $request->post('repass');
        if(!$repass){echo ajson('密码不能为空');die();}
        if($repass != $pass){echo asjon('两次密码不同');die();}
        $level = $request->post('level');
        if(!$level){echo ajson('用户权限级别没有选择');die();}
        if($level >= Session::get('currentUser.level','admin')){
            echo ajson("不能创建超过您当前的权限的用户");die();
        }
        $pass = jiami($pass);
        $releasetime = time();
        $data = ['level'=>$level,'username'=>$username,'userpwd'=>$pass,'releasetime'=>$releasetime];
        $tag = Db::table('users')->insert($data);
        if($tag){
        	echo ajson(1);die();
        }
        echo ajson('未知错误,未能添加成功!');die();
    }

    /**
     * 显示指定的资源
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function read($id)
    {
        //
    }

    /**
     * 显示编辑资源表单页.
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * 保存更新的资源
     *
     * @param  \think\Request  $request
     * @param  int  $id
     * @return \think\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * 删除指定资源
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function delete($id)
    {
        $res = Db::table('users')->field('level')->where('id','=',$id)->find();
        if(!$res){echo ajson(1);die();}
        $selflevel = Session::get('currentUser.level');
        $level = $res['level'];
        if($level <= $selflevel){echo ajson("当前权限不够");die();}
        $tag = Db::table('users')->delete($id);
        if(!$tag){echo asjon("删除异常!");die();}
        echo asjon(1);die();
    }
}
