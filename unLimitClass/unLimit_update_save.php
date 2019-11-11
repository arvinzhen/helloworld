<?php 
	require "fun.php";
	$fun = new fun();
	$fun->connect("sortclass");
	// $fun->dj($_POST);
	if ($_POST){
		$name = $_POST["name"];
		$id = $_POST["id"];
		$count = $fun->waupdate("unlimit", "name='$name'", "id=$id");
		if ($count){
			echo "<script>alert('成功');location.href='unLimit_index.php';</script>";
		} else {
			echo "<script>alert('失败');location.href='unLimit_index.php';</script>";
		}
	} else {
		echo "alert('你来错地方了哦');location.href='unLimit_index.php';";
	}
 ?>