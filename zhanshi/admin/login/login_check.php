<?php 
	include("../../zhanshi.php");
	session_start();
	unset($_SESSION['username']);
	if($_POST){
		$username = isset($_POST['username'])?$_POST['username']:'';
		if(!$username){echo json_encode(['state' => '用户名不能为空']);die();}
		$userpwd = isset($_POST['password'])?$_POST['password']:'';
		if(!$userpwd){echo json_encode(['state' => '密码不能为空']);die();}
		$sql = "select userpwd from user where username='$username'";
		$res = sqlquery("zhanshi", $sql);
		if($res){
			$pwd = $res[0]['userpwd'];
			if(jiami($userpwd) == $pwd){
				$_SESSION['username'] = $username;
				echo json_encode(['state' => 1]);die();
			}
		}
		echo json_encode(['state' => '账号或者密码错误']);die();
	}else{
		echo json_encode(['state' => '非法进入!']);die();
	}

 ?>