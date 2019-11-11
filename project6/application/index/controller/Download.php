<?php 
namespace app\index\controller;

use think\Request;
use think\Controller;
use think\Db;
use app\index\controller\Common;
	
	class Download extends Common{
		protected $xianshi = 7;
		public function index(){
			$dcontent = $this->alllist();
			$this->assign('dcontent',$dcontent);
			return $this->fetch('index');
		}

		public function alllist(){
			$res = Db::table('download')->field('title,path,releasetime')->paginate(8,false)->each(function($item,$key){
			$item['releasetime'] = date("Y-m-d",$item['releasetime']);
			$item['dp'] = $item['title'].".".getExt($item['path']);
				return $item;
			});
			$this->assign('data7',$res);
			return $this->fetch('alllist')->getContent();

		}

	}

 ?>