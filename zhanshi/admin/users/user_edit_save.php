<?php 
	include("../../zhanshi.php");
	if($_GET){
		$id = $_GET['id'];
		//检查 是否没改变
		$sql = "select username,realname,userpwd from user where id=$id";
		$oldres = sqlquery("zhanshi", $sql, false);
		if($oldres){
			$oldusername = isset($oldres['username'])?$oldres['username']:'';
			$oldrealname = isset($oldres['realname'])?$oldres['realname']:'';
			$olduserpwd = isset($oldres['userpwd'])?$oldres['userpwd']:'';
		}else{
			echo json_encode(['state' => '你想改谁']);die();
		}
		$ziduan = "";
		if(isset($_POST["username"]) && $_POST['username'] != $oldusername){
			$ziduan .= " username='".$_POST["username"]."'";
		}
		if(isset($_POST["realname"]) && $_POST['realname'] != $oldrealname){
			$ziduan .= " realname='".$_POST["realname"]."'";
		}
		if(isset($_POST["pass"])){
			$userpwd = $_POST["pass"];
		}
		if(isset($_POST["repass"]) && $_POST["repass"] == $userpwd){
			$repwd = $_POST["repass"];
			$userpwd = jiami($repwd);
			if($userpwd == $olduserpwd){
				echo json_encode(['state' => '虽然不安全,还是得说你密码没变化']);die();
			}
			$ziduan .= " userpwd='".$userpwd."'";
		}
		if($ziduan){
			$sql = "update user set".$ziduan." where id=$id";
			$tag = sqlexec("zhanshi", $sql);
		}else{
			echo json_encode(['state' => '没变化诶']);die();
		}
		if($tag){
			echo json_encode(['state' => '1']);die();//, 'time' => $ak
		}else{
			echo json_encode(['state' => '修改失败']);die();
		}
	}else{
		echo json_encode(['state' => '你想改谁']);die();
	}
 ?>