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
		if(!$_POST["data"]["name"]){echo json_encode(['state' => '标题不能为空!']);die();}
		$classid = $_POST["classid"];
		$id = $_POST["id"];
		//对比原数据
		$sql = "select * from aworks where id=$id";
		$oldres = sqlquery("zhanshi",$sql,false);
		//标题
		//初始化ziduan , tag , tag2
		$ziduan = "";$tag = 0; $tag2 = 1;
		$name = $_POST["data"]["name"];
		if($oldres["name"] != $name){
			$ziduan .= ",name='$name'";
			//更新类别表
			$sql = "update classes set name='$name' where classid='$classid'";
			$tag2 = sqlexec("zhanshi",$sql);
		}//对比标题
		$content = $_POST["data"]["content"];//内容
		if($oldres["content"] != $content){
			$ziduan .= ",content='$content'";
		}//对比内容
		$img = isset($_POST["img"])?$_POST["img"]:'';//图片
		if($img && $oldres["image"] != $img){
			$ziduan .= ",image='$img'";
		}//对比图片
		if($ziduan){
			$sql = "update aworks set ".substr($ziduan,1)." where id=$id";
			$tag = sqlexec("zhanshi",$sql);
		}
		if($tag && $tag2){echo json_encode(['state' => 1]);die();}
		echo json_encode(['state' => '跟新失败,失败信息自己找']);die();
	}
	echo json_encode(['state' => '非法进入哦']);die();
 ?>