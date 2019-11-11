<?php 
	require "fun.php";
	$fun = new fun();
	$fun->connect("sortclass");$tbn = "unlimit";
	$res = $fun->waFetchSome($tbn, "*", "laizhi='0'", "id");//获得最顶级数据
	$str = "";$space = "";
	xianshi($fun, $res, $str, $space);
	function xianshi($fun, $res, &$str, $space, $guishu="顶级"){
		$space .= "····>";
		$str .= "<str>";
		foreach ($res as $value) {
			// $fun->dj($value);
			$id = $value["id"];
			$name = $value["name"];
			$baohan = $value["baohan"];
			$laizhi = $value["laizhi"];
			$str .= "<tr><td><input type='checkbox' name='dels[]' value='$id'></td>";
			$str .= "<td>".$space."$name</td>";
			$str .= "<td>$guishu</td>";
			$str .= "<td><a href='unLimit_add.php?id=$id'>增加</a></td>";
			$str .= "<td><a href='unLimit_detail.php?id=$id'>详情</a></td>";
			$str .= "<td><a href='unLimit_del.php?id=$id'>删除</a></td>";
			$str .= "<td><a href='unLimit_update.php?id=$id'>编辑</a></td></tr>";
			if ($baohan){
				$data = $fun->waFetchSome("unlimit", "*", "id in($baohan)", "id");
				xianshi($fun, $data, $str, $space, $name);
			}
		}
	}

 ?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<style>
		table{width: 1280px;border-collapse:collapse;}
		tr,td,th{border:1px solid #ccc;}
	</style>
</head>
<body>
	<div id="container">
		<h1>你需要注意的是,如果选了 高级别的标题, 低级别没选的也将被删除</h1>
		<h1>并且,右边的添加  是 添加到当前的标题下面</h1>
		<h1>如果越级删除,将会将该级下面的所有级别删除</h1>
		<form action="unLimit_dels" method="post" accept-charset="utf-8">
			<table>
				<caption>all class</caption>
				<thead>
					<tr>
						<th>多选</th>
						<th>classname</th>
						<th>归属</th>
						<th colspan="4">操作</th>
					</tr>
				</thead>
				<tbody>
					<?php echo $str; ?>
					<tr>
						<td colspan="3"><a href="unLimit_add.php" title="">自由增加</a></td>
						<td><button type="button" onclick="check()">一键删除</button></td>
					</tr>
				</tbody>
			</table>
		</form>
	</div>
</body>
<script src="https://cdn.bootcss.com/jquery/3.4.1/jquery.min.js"></script>
<script>
	function check(){
		var x = $("input:checked");
		console.log(x);
		if (x.length){
			$("form").submit();
		} else {
			alert("没选");
			return false;
		}
	}
</script>
</html>