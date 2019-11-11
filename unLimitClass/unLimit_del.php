<?php 
	if ($_GET){
		require "fun.php";
		$fun = new fun();
		// $fun->dj(explode(",", "1"));


		// die();
		$fun->connect("sortclass");$tbn = "unlimit";
		$id = $_GET["id"];
		$res = $fun->waFetchOne("unlimit", "*", "id=$id");
		$laizhi = $res["laizhi"];//上级ID
		$baohan = $res["baohan"];//本级的子集
		$fun->wadel($tbn, "id=$id");//删除本级
		if ($laizhi != "0"){ //更新上级的子集
			$pres = $fun->waFetchOne($tbn, "baohan", "id=$laizhi");
			$arr = explode(",", $pres["baohan"]);
			foreach ($arr as $k => $value) {//更新包含数组
				if ($value == $id){
					unset($arr[$k]);
				}
			}
			if (!empty($arr)){
				$pbaohan = implode(",", $arr);
				$fun->waupdate($tbn, "baohan='$pbaohan'", "id=$laizhi");
			} else {
				$fun->waupdate($tbn, "baohan=''", "id=$laizhi");
			}
		}//结束
		if ($baohan !== "" || $baohan = null){//删除本级子集
			shanchu($fun, $baohan);
		}
		echo "<script>alert('删除结束');location.href='unLimit_index.php';</script>";
	} else {
		echo "alert('你来错地方了哦');location.href='unLimit_index.php';";
	}
	function shanchu($fun, $baohan){
		$arr = explode(",", $baohan);
		foreach ($arr as $value) {
			$id = $value;
			// $fun->dj($id);
			$bl = $fun->waFetchOne("unlimit", "baohan", "id=$id");
			$baohan = $bl["baohan"];
			$fun->wadel("unlimit", "id=$id");
			if ($baohan != "" || $baohan = null){
				shanchu($fun, $baohan);
			}
		}
	}
 ?>