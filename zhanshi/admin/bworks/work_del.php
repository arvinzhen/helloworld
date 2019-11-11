<?php 
	include("../../zhanshi.php");
    checkLogin();
	if($_GET){
		$id = $_GET['id'];
		$classid = $_GET['classid'];
		if(!$id && !$classid){echo json_encode(['state' => '未获得删除项目']);die();}
		$sql = "delete from bworks where id=$id";
		$tag = sqlexec('zhanshi', $sql);
		$sql = "delete from classes where classid=$classid";
		$tag2 = sqlexec("zhanshi",$sql);
		if($tag && $tag2){
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
		$sql = "select classid from bworks where id in($id)";
		$res = sqlquery("zhanshi",$sql);
		$arr = [];
		$tag2 = 1;
		if($res){
			foreach ($res as $value) {
				$arr[] = $value["classid"];
			}
			$classids = implode(',', $arr);
			$sql = "delete from classes where classid in($classids)";
			$tag2 = sqlexec("zhanshi",$sql);
		}
		$sql = "delete from bworks where id in($id)";
		$tag = sqlexec("zhanshi", $sql);
		if($tag && $tag2){
			echo json_encode(['state' => 1]);
		}else{
			echo json_encode(['state' => $id.'号有问题,操作失败']);
		}
	}else{
		echo json_encode(['state' => '删不到啊']);die();
	}


 ?>