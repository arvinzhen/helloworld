<?php 
	defined('BASEPATH') OR exit('No direct script access allowed');
	class Fenlei extends CI_Model{
		public function __construct(){
			parent::__construct();
		}

		public function test(){
			ohno("asdasd");
		}

		public function addFenlei($title,$type,$pid=0){
			$data = array('pid'=>$pid,'classid'=>0,'title'=>$title,'type'=>$type);
			$count = $this->db->insert("yt_classes",$data);
			if($count){
				echo json_encode(['state'=>'1']);die();
			}
			echo json_encode(['state'=>'0']);die();
		}

		public function fenlei($type=1){
			$sql = "select id,pid,title from yt_classes where classid=0 and type='$type' order by id";
			$query = $this->db->query($sql);
			$res = $query->result();
			if($res){
				//初始化数组
				$strFenlei = "";$tmpid = 0;
				//找初始pid=0
				

			}
		}
	}
 ?>