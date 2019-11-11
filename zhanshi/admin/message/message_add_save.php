<?php 
	include("../../zhanshi.php");
	checkLogin();
	if($_POST){
		$username = $_POST['username'];
		if(!$username){echo json_encode(['state' => '没填写用户名哦!']);die();}
		$sql = "insert into message set name='$username'";
		$title = $_POST['title'];
		if(!$title){echo json_encode(['state' => '请总结一个标题']);die();}
		$sql .= ",title='$title'";
		$tel = $_POST['tel'];
		if(!$tel){echo json_encode(['state' => '请写一个电话号码,让我们好联系你']);die();}
		$sql .= ",tel='$tel'";
		$content = $_POST['content'];
		if($content){
			$sql .= ",content='$content'";
		}
		$qq = $_POST['qq'];
		if($qq){
			$sql .= ",qq='$qq'";
		}
		$email = $_POST['email'];
		if($email){
			$sql .= ",email='$email'";
		}
		$releasetime = time();
		$sql .= ",releasetime='$releasetime'";
		$tag = sqlexec("zhanshi",$sql);
		if($tag){
			echo json_encode(['state' => 1]);die();
		}
		echo json_encode(['state' => '发送失败']);die();
	}else{
		echo json_encode(['state' => '没有传入数据哦']);die();
	}
 ?>