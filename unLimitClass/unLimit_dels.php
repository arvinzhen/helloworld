<?php //应该存个level  判断level大小 然后 从大往下的删除
	if ($_GET){
		require "fun.php";
		$fun = new fun();
		$fun->dj("应该存个level  判断level大小 然后 从大往下的删除");


		die();
		$fun->connect("sortclass");$tbn = "unlimit";
		$id = $_GET["id"];
		$res = $fun->waFetchOne("unlimit", "*", "id=$id");
		$laizhi = $res["laizhi"];//上级ID
		$baohan = $res["baohan"];//本级的子集
		$fun->wadel($tbn, "id='$id'");//删除本级
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
		if ($baohan !== ""){//删除本级子集
			shanchu($fun, $baohan);
		}
	} else {
		echo "alert('你来错地方了哦');location.href='unLimit_index.php';";
	}
	function shanchu($fun, $baohan){
		$arr = explode(",", $baohan);//原来是这里没判断  如果没逗号咋整
		foreach ($arr as $value) {
			$id = $value;
			// $fun->dj($id);
			$baohan = $fun->waFetchOne("unlimit", "baohan", "id='$id'");
			$baohan = $baohan["baophan"];
			$fun->wadel("unlimit", "id='$id'");
			if ($baohan != ""){
				shanchu($fun, $baohan);
			}
		}
	}
 ?>