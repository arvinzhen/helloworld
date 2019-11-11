<?php 
	include("../../zhanshi.php");
	checkLogin();
	if($_POST && $_GET['id']){
		$ziduan = "";$tag= false;//初始化
		$id = $_GET['id'];
		//新数据
		$name = $_POST['name'];
		$tel = $_POST['tel'];
		$addres = $_POST['addres'];
		if(!$name || !$tel || !$addres){
			echo json_encode(['state' => '必填项目必须填写']);die();
		}
		$phone = $_POST['phone'];
		$qq = $_POST['qq'];
		$email = $_POST['email'];
		//原始数据
		$sql = "select * from sysset where id=$id";
		$res = sqlquery("zhanshi",$sql,false);
		$oldname = $res['name'];
		if($oldname != $name){
			$ziduan .= ",name='$name'";
		}
		$oldtel = $res['tel'];
		if($oldtel != $tel){
			$ziduan .= ",tel='$tel'";
		}
		$oldphone = $res['phone'];
		if($oldphone != $phone){
			$zidaun .= ",phone='$phone'";
		}
		$oldqq = $res['qq'];
		if($oldqq != $qq){
			$zidaun .= ",qq='$qq'";
		}
		$oldemail = $res['email'];
		if($oldemail != $email){
			$zidaun .= ",email='$email'";
		}
		$oldaddres = $res['addres'];
		if($oldaddres != $addres){
			$zidaun .= ",addres='$addres'";
		}
		if($ziduan){
			$sql = "update sysset set ".substr($ziduan,1)." where id=$id";
			$tag = sqlexec("zhanshi",$sql);
		}
		if($tag){
			echo json_encode(['state' => 1]);die();
		}else{
			echo json_encode(['state' => '未发生任何变化']);die();
		}
	}else{
		echo json_encode(['state' => '请选择要修改的项目']);die();
	}
 ?>