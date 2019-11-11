<?php 
	if (!$_POST){
		echo "<script>alert('失败');location.href='unLimit_add.php';</script>";
	}
	require "fun.php";
	$test = new fun();
	$test->connect("sortclass");$tbn = "unlimit";
	$name = $_POST["name"];
	$laizhi = $_POST["fl"];
	$count = $test->waadd($tbn,"name='$name',laizhi='$laizhi'");
	if ($laizhi !== '0'){
		$arr = $test->waFetchSome($tbn, "id,laizhi", "laizhi='$laizhi'", "id");
		$str = array();
		foreach ($arr as $value) {
			$str[] = $value["id"];
		}
		$baohan = implode(",", $str);
		$test->waupdate($tbn, "baohan='$baohan'", "id='$laizhi'");
	}

	if ($count) {
		echo "<script>alert('成功');location.href='unLimit_add.php';</script>";
	} else {
		echo "<script>alert('失败');location.href='unLimit_add.php';</script>";
	}
 ?>