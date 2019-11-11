<?php 
	include("../../zhanshi.php");
	if($_GET){
		$id = $_GET['id'];
		$sql = "delete from user where id=$id";
		$tag = sqlexec('zhanshi', $sql);
		if($tag){
			echo json_encode(['state' => 1]);die();
		}else{
			echo json_encode(['state' => $id.'号有问题,操作失败']);die();
		}

	}elseif($_POST){
		$ids = $_POST['ids'];
		$id = "";
		for($i = 0; $i < count($ids); $i++){
			$id .= "$ids[$i],";
		}
		$id = substr($id,0,strripos($id,','));
		$sql = "delete from user where id in($id)";
		$tag = sqlexec("zhanshi", $sql);
		if($tag){
			echo json_encode(['state' => 1]);die();
		}else{
			echo json_encode(['state' => $id.'号有问题,操作失败']);die();
		}
	}else{
		echo json_encode(['state' => '删不到啊']);die();
	}


 ?>