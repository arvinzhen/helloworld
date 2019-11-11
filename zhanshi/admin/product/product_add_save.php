<?php 
	include("../../zhanshi.php");
	checkLogin();
	if($_FILES){//处理图片
		$num = count($_FILES);
		for($i = 0; $i < $num; $i++){
			if($_FILES[$i]["error"]){echo json_encode(['state' => '第$i张图片上传失败,请全部重新上传']);die();}
		}
		$arr = [];
		foreach ($_FILES as $value) {
			$name = $value["tmp_name"];
			$arr[] = $name;
		}
		$name = $_FILES[0]["name"];
		$houzui = getFileType($name);
		$picname = time().rand(100,999).$houzui;
		$arr[0] = $picname;
		move_uploaded_file($_FILES[0]["tmp_name"], "../../images/".$picname);//暂时只支持存一张,因为表的字段就只写了一个
		echo json_encode(['state' => '1','names' => $arr]);die();
	}
	if($_POST){//处理表单
		if(isset($_POST['visit'])){
			$vis = $_POST['visit']+1;
			$classid = $_POST['classid'];
			$sql = "update product set visit='$vis' where classid='$classid'";
			sqlexec("zhanshi",$sql);
			die();
		}
		if(!$_POST["data"]["name"]){echo json_encode(['state' => '标题不能为空!']);die();}
		if(!$_POST["data"]["sontype"]){echo json_encode(['state' => '类别没选!']);die();}
		$name = $_POST["data"]["name"];
		$sontype = $_POST["data"]["sontype"];
		$content = $_POST["data"]["content"];
		$img = isset($_POST["img"])?$_POST["img"]:'';
		$sql = "select classid from classes order by id desc limit 0,1";
		$res = sqlquery("zhanshi",$sql,false);
		$id = $res["classid"]+1;
		$releasetime = time();
		$sql = "insert into product set name='$name',content='$content',image='$img',classid='$id',releasetime='$releasetime'";
		$tag = sqlexec("zhanshi",$sql);
		$sql = "insert into classes set name='$name',type='3',classid='$id',sontype='$sontype'";
		$tag2 = sqlexec("zhanshi",$sql);
		if($tag && $tag2){echo json_encode(['state' => 1]);die();}
		echo json_encode(['state' => '加入失败,失败信息自己找']);die();
	}
	echo json_encode(['state' => '非法进入哦']);die();
 ?>