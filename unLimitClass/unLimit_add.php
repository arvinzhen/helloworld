<?php 
	require "fun.php";
	$fun = new fun();
	$fun->connect("sortclass");$tbn = "unlimit";
	$str = "<select name='fl'><option value='0'>请选择</option>";
	if ($_GET){//插入特定的区域
		$id = $_GET["id"];
		$condition = "id=".$id;
		$res = $fun->waFetchOne($tbn, "name", $condition);
		$pname = $res["name"];
		$str .= "<option value='$id'>$pname</option>";
	} else { //初始化插入,全局插入
		$res = $fun->waFetchSome($tbn, "*", "laizhi='0'", "id");//获得最顶级数据
		if (!empty($res)){
			dayin($fun, $res, $str, "");
		}
	}


	$str .= "</select>";

	function dayin($fun ,$res, &$str, $space){
		$tbn = "unlimit";
		$space .= "|··>";
		foreach ($res as $value) {
			$id = $value["id"];
			$name = $value["name"];
			$baohan = isset($value["baohan"])?$value["baohan"]:"";
			$str .= "<option value='$id'>".$space."$name</option>";
			if($baohan !== ""){
				$data = $fun->waFetchSome($tbn, "*", "id in($baohan)", "id");
				dayin($fun, $data, $str, $space);
			}
		}
	}

 ?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
</head>
<body>
	<div id="container">
		<h1>添加类别</h1>
		<form action="unLimit_add_save.php" method="post" accept-charset="utf-8">
			<label>添加的类别</label><span>*如果不选的话,将在最顶级创建</span><br/>
			<?php echo $str; ?><br/>
			<label>添加标题</label>
			<input id="wa" type="text" name="name">
			<button id="test" type="button" onclick="check()">提交</button>
		</form>
	</div>
</body>
<script>
	function check(){
		var tl = document.getElementById("wa").value;
		if(!tl){
			alert("标题没填");
			return false;
		}
		document.getElementsByTagName("form")[0].submit();
	}
</script>
</html>