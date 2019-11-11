<?php 
	include("../../zhanshi.php");
	checkLogin();
	if(!$_GET && !$_POST){
		echo json_encode(['state' => '为获得删除项目!']);die();
	}
	if($_GET){
		$id = $_GET['id'];
		$sql = "select id from sysset where id=$id";
		if(!sqlquery("zhanshi",$sql,false)){
			echo json_encode(['state' => '该项目不存在']);die();
		}
		$sql = "delete from sysset where id=$id";
		$tag = sqlexec("zhanshi",$sql);
		if($tag){
			echo json_encode(['state' => 1]);die();
		}else{
			echo json_encode(['state' => '删除该项目失败']);die();
		}
	}else{
		$ids = implode(",",$_POST['ids']);
		$sql = "delete from sysset where id in($ids)";
		$tag = sqlexec("zhanshi",$sql);
		if($tag){
			echo json_encode(['state' => 1]);die();
		}else{
			echo json_encode(['state' => '删除这些项目发生错误']);die();
		}
	}
 ?>