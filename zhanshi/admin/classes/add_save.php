<?php 
	include("../../zhanshi.php");
	checkLogin();
	if($_POST){
		$sontype = $_POST['sontype'];
		if(!$sontype){
			echo json_encode(['state' => '大类别未选择']);die();
		}
		$name = $_POST['name'];
		if(!$name){
			echo json_encode(['state' => '类别名称不能为空']);die();
		}
		$sql = "select sontype from classes where type='$sontype' order by sontype desc limit 0,1";
		$num = sqlquery("zhanshi",$sql,false)['sontype'] + 1;//could check res void call to null bug
		$sql = "insert into classes set name='$name',type='$sontype',sontype='$num'";
		$tag = sqlexec("zhanshi",$sql);
		if($tag){
			echo json_encode(['state' => 1]);die();
		}
		echo json_encode(['state' => '添加失败,请检查内容']);die();
	}else{
		echo json_encode(['state' => '未获得数据']);die();
	}
	echo json_encode(['state' => '非法添加']);die();
 ?>