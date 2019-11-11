<?php 
	include("../../zhanshi.php");
	checkLogin();
	if($_POST || $_GET){
		$ids = isset($_POST['id'])?$_POST['id']:"";
		$id = isset($_GET['id'])?$_GET['id']:"";
		if(!$ids && !$id){
			echo json_encode(['state' => '没有删除项']);die();
		}
		if($ids && $id){
			echo json_encode(['state' => '删不过来了']);die();
		}
		if($ids){
			$sql = "delete from about where id in($ids)";
		}else{
			$sql = "delete from about where id=$id";
		}
		$tag = sqlexec("zhanshi",$sql);
		if($tag){
			echo json_encode(['state' => 1]);die();
		}
		echo json_encode(['state' => '发生致命错误']);die();
	}else{
		echo json_encode(['state' => '没有获得数据']);die();
	}
	die();
 ?>