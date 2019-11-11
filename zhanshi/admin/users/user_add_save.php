<?php 
	include("../../zhanshi.php");
	if(isset($_POST["username"])){
		$username = $_POST["username"];
	}else{echo json_encode(['state' => '姓名不能为空']);die();}//处理空用户名
	if(isset($_POST["realname"])){
		$realname = $_POST["realname"];
	}else{echo json_encode(['state' => '真实姓名不能为空']);die();}//处理空真实姓名
	$sql = "select id from user where username='$username' or realname='$realname'";
	$res = sqlquery("zhanshi",$sql);
	if($res){echo json_encode(['state' => '重名了哦']);die();}//处理重名
	if(isset($_POST["pass"])){
		$userpwd = $_POST["pass"];
	}else{echo json_encode(['state' => '密码不能为空']);die();}//处理空密码
	if(isset($_POST["repass"]) && $_POST["repass"] == $userpwd){
		$repwd = $_POST["repass"];
	}else{echo json_encode(['state' => '两次密码不一样']);die();}//处理两次密码不一致
	$userpwd = jiami($repwd);
	$releasetime = time();
	$sql = "insert into user set username='$username',userpwd='$userpwd',realname='$realname',regtime='$releasetime'";
	$tag = sqlexec("zhanshi", $sql);
	if($tag){
		echo json_encode(['state' => '1']);//, 'time' => $ak
	}else{
		echo json_encode(['state' => '添加失败']);
	}
 ?>