<?php 
if ($_GET){
	require "fun.php";
	$fun = new fun();
	$id = $_GET["id"];
	$fun->connect("sortclass");$tbn = "unlimit";
	$res = $fun->waFetchOne($tbn, "*", "id=$id");
	$laizhi = $res["laizhi"];
	if($laizhi == "0"){
		$laizhi = "顶级";
	}
	$pn = $fun->waFetchOne($tbn, "name", "id=$laizhi");
	$pname = $pn["name"];
	$baohan = $res["baohan"];
	if($baohan == ""){
		$baohan = "本级没有子集";
	}
	$name = $res["name"];
	$str = "";
	$str .= "<li>当前的id是$id</li>";
	$str .= "<li>当前的标题是$name<br/></li>";
	$str .= "<li>本级的子集是&nbsp;&nbsp;&nbsp;$baohan<br/> </li>";
	$str .= "<li>本级的父级是&nbsp;&nbsp;&nbsp;$pname<br/></li>";

} else {
	echo "alert('你来错地方了哦');location.href='unLimit_index.php';";
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
</head>
<body>
	<div>
		<?php echo $str; ?>
		<form action="unLimit_update_save.php" method="post" accept-charset="utf-8">
			<li>更改你的标题 <input id="test" type="text" name='name'/></li>
			<li style="display: none;"><input type="text" name="id" value="<?php echo $id; ?>"></li>
			<button type="button" onclick="check()">保存</button>
		</form>
	</div>
</body>
<!-- <script src="https://cdn.bootcss.com/jquery/3.4.1/jquery.min.js"></script> -->
<script>
	function check(){
		<?php echo "var b = '".$name."';"; ?>
		var a = document.getElementById("test").value;
		if (a == undefined || a == b){
			alert("不能为空 或者 没有改变");
			return false;
		}else {
			document.getElementsByTagName("form")[0].submit();
		}
	}
</script>
</html>