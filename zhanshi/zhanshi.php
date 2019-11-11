<?php 
	function connect($dbn, $username="root", $password="root"){  //链接数据库，默认用户名 和密码 为root  返回数据库对象
		$sql = "mysql:host=127.0.0.1;dbname=".$dbn;
		$db = new PDO($sql, $username, $password);
		$db->exec("SET names 'utf8'");
		return $db;
	}

	function getFileType($str){
		return substr($str,strripos($str,'.'));
	}

	function login($str){
		session_start();
		$_SESSION['username'] = $str;
	}

	function checkLogin(){
		session_start();
		if(!isset($_SESSION['username'])){
			echo "<script>parent.location.href='/zhanshi/admin/login/login_index.php';</script>";die();
		}
	}

	function sqlexec($dbn, $sql){
		$db = connect($dbn);
		$tag = $db->exec($sql);
		return $tag;
	}

	function sqlquery($dbn, $sql, $erwei=true){
		$db = connect($dbn);
		$query = $db->query($sql);
		// ohno($query);
		$query->setFetchMode(PDO::FETCH_ASSOC);
		$res = $query->fetchall();
		if($res){
			if($erwei){
				return $res;
			}else{
				return $res[0];
			}
		}else{
			// echo "<script>alert(\"".$sql."当前未搜素到!\");</script>";
		}
	}

	function jiami($str){
		$str = md5($str);
		$str = sha1($str);
		return $str;
	}

	function ohno($res){
		echo "<pre>";
		print_r($res);
		echo "</pre>";
		die();
	}

	function addUE(){
		echo "<script id='uecontainer'></script><script src='/utf8-php/ueditor.config.js'></script><script src='/utf8-php/ueditor.all.js'></script>";
	}

	function addJqLayer(){
		echo "<script src='/jQuery/jquery-3.4.1.js' type='text/javascript'></script><script src='/layui/layer/layer.js' type='text/javascript'></script>";
	}

	function getAllPage($tbn,$condition=""){
		if($condition){
			$condition = " where ".$condition;
		}
		$sql = "select count(*) as t from ".$tbn.$condition;
		$res = sqlquery("zhanshi",$sql,false);
		$allnum = $res["t"];
		return $allnum;
	}

	function bottomNav($tbn,$link,$curPage,$condition=""){
		$allPage = ceil(getAllPage($tbn,$condition) / 10);
		$str = "<div class='layui-card-body '><div class='page'><div>";
		if($curPage == 0){$str .= "<a class='prev' href='' disabled>&lt;&lt;</a>";}
		else{$prePage = $curPage - 1;$str .= "<a class='prev' href='".$link."?page=$prePage'>&lt;&lt;</a>";}
		for($i = 1; $i <= $allPage; $i++){
			if($i == ($curPage + 1)){
				$str .= "<span class='current'>$i</span>";
			}else{
				$str .= "<a class='num' href='".$link."?page=$i'>$i</a>";
			}
		}
		if($allPage == $curPage){
			$str .= "<a class='next' href='' disabled>&gt;&gt;</a>";
		}else{$afterPage = $curPage + 1;$str .= "<a class='next' href='".$link."?page=$afterPage' disabled>&gt;&gt;</a>";}
		$str .= "</div></div></div>";
		echo $str;
	}

	function fenye($firstNum,$onePage=10){
		if($onePage <= 0){
			echo "除数不能小于等于0";die();
		}
		$firstPage = $onePage * $firstNum;
		$limit = " limit $firstPage,$onePage";
		return $limit;
	}

 ?>