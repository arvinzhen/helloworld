<?php 
	include("../../zhanshi.php");
	checkLogin();
	if($_POST){
		if(!isset($_POST['title'])){echo json_encode(['state' => '标题不能为空']);die();}
		$title = $_POST['title'];
		$content = $_POST['html'];
		$sql = "insert into about set name='$title',content='$content'";
		$tag = sqlexec("zhanshi", $sql);
		if($tag){
			echo json_encode(['state' => '成功']);die();
		}else{
			echo json_encode(['state' => '未知错误']);die();
		}
		die();
	}else{
		echo json_encode(['state' => '未获得数据']);die();
	}
	die();
 ?>