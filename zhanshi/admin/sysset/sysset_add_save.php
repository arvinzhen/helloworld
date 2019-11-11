<?php 
	include("../../zhanshi.php");
	if($_POST){
		if(!$_POST['name'] || !$_POST['tel'] || !$_POST['addres']){
			echo json_encode(['state' => '必填项没填写']);die();
		}
		$name = $_POST['name'];
		$tel = $_POST['tel'];
		$addres = $_POST['addres'];
		$sql = "insert into sysset set name='$name',tel='$tel',addres='$addres'";//必填项
		$phone = $_POST['phone'];
		if($phone){
			$sql .= ",phone='$phone'";
		}
		$qq = $_POST['qq'];
		if($qq){
			$sql .= ",qq='$qq'";
		}
		$email = $_POST['email'];
		if($email){
			$sql .= ",email='$email'";
		}
		$tag = sqlexec("zhanshi",$sql);
		if($tag){
			echo json_encode(['state' => 1]);die();
		}else{
			echo json_encode(['state' => '入库失败!']);die();
		}
		echo json_encode(['state' => '发生未知错误']);die();
	}
	echo json_encode(['state' => '非法进入']);die();
 ?>