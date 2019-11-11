<?php 
	include("../../zhanshi.php");
	checkLogin();
	if($_GET && $_POST){
		$id =$_GET['id'];
		$sql = "select * from about where id=$id";//比对原有的数据
		$oldres = sqlquery("zhanshi",$sql,false);
		$oldname = $oldres['name'];
		$oldcontent = $oldres['content'];
		$ziduan = "";//设置修改的字段
		$name = isset($_POST['title'])?$_POST['title']:"";
		if(!$name){echo json_encode(['state' => '标题不能为空!']);die();}//标题不能为空
		$content = isset($_POST['html'])?$_POST['html']:"";
		if($name == $oldname && $content == $oldcontent){echo json_encode(['state' => '内容没变化哦']);die();}//内容不能没变化
		if($name != $oldname){$ziduan .= ",name='$name'";}
		if($content != $oldcontent){$ziduan .= ",content='$content'";}
		$sql2 = "update about set ".substr($ziduan,1);
		$tag = sqlexec("zhanshi",$sql2);
		if($tag){echo json_encode(['state' => 1]);die();}
		echo json_encode(['state' => '数据库的错误']);die();
	}else{
		echo json_encode(['state' => '没指定修改目标']);die();
	}
	die();
 ?>