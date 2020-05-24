<?php
namespace app\index\controller;

use think\Controller;
use think\Request;
use think\facade\Cache;
use think\Db;
use app\index\controller\Common;

class Message extends Common{

	protected $xianshi = 6;

	public function index($id=26){
		if($id == 26){
			$newscontent = $this->contact();
		}else if($id == 28){
			$newscontent = $this->onlinemessage();
		}else{
			$newscontent = "空";
		}
		$datamid = $this->midnav($id);
		$this->assign('datamid',$datamid);
		$this->assign('newscontent',$newscontent);
		return $this->fetch('index');
	}

	public function onlinemessage(){
		return $this->fetch('onlinemessage')->getContent();
	}

	public function contact(){
		return $this->fetch('contact')->getContent();
	}

	public function midnav($pz){
		$this->assign('contact',0);
		if($pz == 26){
			$this->assign('contact',1);
		}
		$this->assign('onlinemessage',0);
		if($pz == 28){
			$this->assign('onlinemessage',1);
		}
		//$this->assign('pz',$pz);
		//$res = Db::table('classes')->field('id,title')->where('pid','=',0)->where('type','=',$this->xianshi)->select();
		//$this->assign('datamidnav',$res);
		return $this->fetch('midnav')->getContent();
	}

	public function addv($id){
		$res = Db::table('message')->field('viewpage')->where('id','=',$id)->find();
		if(empty($res)){
			die();
		}
		$views = $res['viewpage'] + 1;
		Db::table('message')->where('id','=',$id)->data(['viewpage'=>$views])->update();
		die();
	}

	public function jobmessage(){
		$names = $this->request->get('names');
		$sex = $this->request->get('sex');
		$mobile = $this->request->get('mobile');
		$will = $this->request->get('will');
		$releasetime = time();
		$data = ['name'=>$names,'sex'=>$sex,'mobile'=>$mobile,'will'=>$will,'releasetime'=>$releasetime];
		$tag = Db::table('findjob')->data($data)->insert();
		if(!$tag){
			echo ajson("发送失败,请稍后再试");die();
		}
		echo ajson(1);die();
	}

	public function liumessage(){
		$names = $this->request->get('names');
		if(!$names){
			echo ajson("姓名不能为空!");die();
		}
		//$sex = $this->request->get('sex');
		$mobile = $this->request->get('mobile');
		if(!$mobile){
			echo ajson("手机号不能为空!");die();
		}
 		$pids = Db::table('classes')->field('id')->where('pid','=',0)->where('type','=',6)->find();
        $pid = $pids['id'];
        $classid = 1;
        $res = Db::table('classes')->field('classid')->order('classid','desc')->find();
        if(!empty($res)){
            $classid = $res['classid'] + 1;
        }
        $data1 = ['pid'=>$pid,'classid'=>$classid,'title'=>$mobile,'type'=>6];
        Db::table('classes')->data($data1)->insert();
		$content = $this->request->get('content');
		$releasetime = time();
		$data = ['classid'=>$classid,'name'=>$names,'phone'=>$mobile,'content'=>$content,'releasetime'=>$releasetime];
		$tag = Db::table('message')->data($data)->insert();
		if(!$tag){
			echo ajson("发送失败,请稍后再试");die();
		}
		echo ajson(1);die();
	}
}

 ?>