<?php 
	class fun{
		public $db;

		public function connect($dbn) {
			$this->db = new PDO("mysql:host=127.0.0.1;dbname=".$dbn,"root", "root");
			$this->db->exec("SET names 'utf8'");
		}
		// public function __construct($dbname){//链接数据库
		// 	$this->db = new PDO("mysql:host=127.0.0.1;dbname=".$dbname,"root", "root");
		// 	$this->db->exec("SET names 'utf8'");
		// }

		public function waadd($tbn, $ziduan){//增加
			$sql = "insert into ".$tbn." set ".$ziduan;//ziduan = '$value'
			// $sql = "insert into ".$tbn." (字段名列表) values(列表值)";
			$db = $this->db;
			$tag = $db->exec($sql);
			return $tag;
		}

		public function wadel($tbn, $condition){//删除
			$sql = "delete from ".$tbn." where ".$condition;
			$db = $this->db;
			$tag = $db->exec($sql);
			return $tag;
		}

		public function waupdate($tbn, $ziduan, $condition){//更新
			$sql = "update ".$tbn." set ".$ziduan." where ".$condition;
			$db = $this->db;
			$tag = $db->exec($sql);
			return $tag;
		}

		public function waFetchSome($tbn, $ziduan, $condition, $orderby){//查询特定
			$sql = "select ".$ziduan." from ".$tbn." where ".$condition." order by ".$orderby." asc";
			$db = $this->db;
			$query = $db->query($sql);
			$query->setFetchMode(PDO::FETCH_ASSOC);
			$result = $query->fetchall();
			// $this->dj($result);
			return $result;
		}

		public function waFetchAll($tbn, $ziduan, $orderby){//查询所有
			$sql = "select ".$ziduan." from ".$tbn." order by ".$orderby;
			$db = $this->db;
			$query = $db->query($sql);
			$query->setFetchMode(PDO::FETCH_ASSOC);
			$result = $query->fetchall();
			return $result;
		}

		public function waFetchOne($tbn, $ziduan, $condition){//查询一条
			$sql = "select ".$ziduan." from ".$tbn." where ".$condition;
			$db = $this->db;
			$query = $db->query($sql);
			$query->setFetchMode(PDO::FETCH_ASSOC);
			$result = $query->fetch();
			return $result;
		}

		public function dj($str){
			echo "<pre>";
			print_r($str);
			echo "</pre>";
			die();
		}
	}
 ?>