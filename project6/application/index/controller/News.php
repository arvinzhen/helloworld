<?php
namespace app\index\controller;

use think\Controller;
use think\facade\Cache;
use think\Db;
use app\index\controller\Common;

class News extends Common{

	protected $xianshi = 2;

	public function index($id=0){
		$datamid = $this->midnav($id);
		$newscontent = $this->alllist($id);
		$this->assign('datamid',$datamid);
		$this->assign('newscontent',$newscontent);
		return $this->fetch('index');
	}

	public function typelist($pid){

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
		$res2 = Db::table('news')->field('classid,title,intro,releasetime')->where('classid','in',$classids)->paginate(5,false)->each(function($item,$key){
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
		$page = updown($res1,$classid,"@index/news/show/");
		$res = Db::table('news')->field("id,title,content,releasetime,viewpage")->where('classid','=',$classid)->find();
		$res['releasetime'] = date("Y:m:d",$res['releasetime']);
		//$page = $res->render();
		$this->assign('newsdetail',$res);
		$this->assign('page',$page);
		return $this->fetch('newsdetail')->getContent();
	}

	public function midnav($pz){
		$this->assign('pz',$pz);
		$res = Db::table('classes')->field('id,title')->where('pid','=',0)->where('type','=',$this->xianshi)->select();
		$this->assign('datamidnav',$res);
		return $this->fetch('midnav')->getContent();
	}

	public function addv($id){
		$res = Db::table('news')->field('viewpage')->where('id','=',$id)->find();
		if(empty($res)){
			die();
		}
		$views = $res['viewpage'] + 1;
		Db::table('news')->where('id','=',$id)->data(['viewpage'=>$views])->update();
		die();
	}
}

 ?>