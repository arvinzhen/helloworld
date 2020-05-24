<?php
namespace app\index\controller;

use think\Controller;
use think\facade\Cache;
use think\Db;
use app\index\controller\Common;

class Job extends Common{

	protected $xianshi = 5;

	public function index($id=0){
		if($id == 0){
			$newscontent = $this->offer();
		}else if($id == 1){
			$newscontent = $this->message();
		}else if($id > 1){
			$newscontent = $this->alllist($id);
		}else{
			$newscontent = "空";
		}
		$datamid = $this->midnav($id);
		$this->assign('datamid',$datamid);
		$this->assign('newscontent',$newscontent);
		return $this->fetch('index');
	}

	public function message(){
		return $this->fetch('message')->getContent();
	}

	public function offer(){
	$res = Db::table('offers')->order('id','asc')->paginate(8,false)->each(function($item,$key){
            $item['releasetime'] = sj($item['releasetime']);
            return $item;
        });
	$page = $res->render();
	$this->assign('offpage',$page);
	$this->assign('offdata',$res);
	return $this->fetch('offer')->getContent();
	}

	public function show($classid){
		$res1 = Db::table('classes')->field("pid")->where('classid','=',$classid)->find();
		$pid = 0;
		if(!empty($res1)) {
			$pid = $res1['pid'];
		}
		$datamid = $this->midnav($pid);
		$newscontent = $this->newsdetail($classid,$pid);
		$this->assign('datamid',$datamid);
		$this->assign('newscontent',$newscontent);
		return $this->fetch('show');
	}

	public function alllist($pid){
		$condition = [];
		$condition[] = ['type','=',$this->xianshi];
		$condition[]= ['classid','>',0];
		if($pid){
			$condition[] = ['pid','=',$pid];
		}
		$res1 = Db::table('classes')->field('classid')->where($condition)->select();
		$this->assign('alllistpz',0);
		if(empty($res1)){
			return $this->fetch('alllist')->getContent();
		}
		$data = [];
		foreach ($res1 as $item) {
			$data[] = $item['classid'];
		}
		$classids =	implode(",",$data);
		$res2 = Db::table('job')->field('classid,title,intro,releasetime')->where('classid','in',$classids)->paginate(5,false)->each(function($item,$key){
			$strtime = rq($item['releasetime']);
			$item['releasetime'] = substr($strtime,0,strripos($strtime,":"));
			$item['timeb'] = substr($strtime,strripos($strtime,":")+1);
			return $item;
		});
		$page = $res2->render();
		if(empty($res2)){
			return $this->fetch('alllist')->getContent();
		}
		$this->assign('alllistpz',1);
		$this->assign("alllist",$res2);
		$this->assign("alllpage",$page);
		return $this->fetch('alllist')->getContent();
	}

	public function newsdetail($classid,$pid){
		$res1 = Db::table('classes')->field('classid,title')->where('pid','=',$pid)->order('id','asc')->select();
		$page = updown($res1,$classid,"@index/job/show/");
		$res = Db::table('job')->field("id,title,content,releasetime,viewpage")->where('classid','=',$classid)->find();
		$res['releasetime'] = date("Y:m:d",$res['releasetime']);
		//$page = $res->render();
		$this->assign('newsdetail',$res);
		$this->assign('page',$page);
		return $this->fetch('newsdetail')->getContent();
	}

	public function midnav($pz){
		$this->assign('offer',0);
		if($pz == 0){
			$this->assign('offer',1);
		}
		$this->assign('message',0);
		if($pz == 1){
			$this->assign('message',1);
		}
		$this->assign('pz',$pz);
		$res = Db::table('classes')->field('id,title')->where('pid','=',0)->where('type','=',$this->xianshi)->select();
		$this->assign('datamidnav',$res);
		return $this->fetch('midnav')->getContent();
	}

	public function addv($id){
		$res = Db::table('job')->field('viewpage')->where('id','=',$id)->find();
		if(empty($res)){
			die();
		}
		$views = $res['viewpage'] + 1;
		Db::table('job')->where('id','=',$id)->data(['viewpage'=>$views])->update();
		die();
	}
}

 ?>