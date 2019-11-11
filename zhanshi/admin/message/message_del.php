<?php 
	include("../../zhanshi.php");
	checkLogin();
	if(isset($_GET['id'])){
		$id = $_GET['id'];
		$sql = "select id from message where id=$id";
		if(!sqlquery("zhanshi",$sql,false)){
			echo json_encode(['state' => '该项目不存在!']);die();
		}
		$sql = "delete from message where id=$id";
		$tag = sqlexec("zhanshi",$sql);
		if($tag){
			echo json_encode(['state' => 1]);die();
		}
		echo json_encode(['state' => '删除失败']);die();
	}
	echo json_encode(['state' => '未收到需要删除的项目']);die();
 ?>