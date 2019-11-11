<?php 
	if ($_GET){
		require "fun.php";
		$fun = new fun();
		$dbn = "sortclass";$tbn = "unlimit";
		$fun->connect($dbn);
		$id = $_GET["id"];
		$res = $fun->waFetchOne($tbn, "*", "id=$id");
		$laizhi = $res["laizhi"];
		if($laizhi == "0"){
			$laizhi = "顶级";
		}
		$baohan = $res["baohan"];
		if($baohan == ""){
			$baohan = "本级没有子集";
		}
		$name = $res["name"];
		$str = "";
		$str .= "<li>当前的id是$id</li>";
		$str .= "<li>当前的标题是$name</li>";
		$str .= "<li>本级的子集是&nbsp;&nbsp;&nbsp;$baohan</li>";
		$str .= "<li>本级的父级是&nbsp;&nbsp;&nbsp;$laizhi</li>";
		$str .= "<li><a href='unLimit_index.php'>返回首页</a></li>";
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
 	</div>
 </body>
 </html>