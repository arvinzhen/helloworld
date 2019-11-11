<?php 
	include("../../zhanshi.php");
	//加载导航条
	$arr = ["news","aworks","product","bworks"];
	$arr2 = [];
	for($i = 1; $i <= 4; $i++){
		$sql = "select name,sontype from classes where classid=0 and type=$i order by sontype asc";
		$res = sqlquery("zhanshi",$sql);
		$str = "";
		for($j = 1; $j < count($res); $j++){
			$name = $res[$j]['name'];
			$sontype = $res[$j]['sontype'];
			$str .= "<li><a href='/admin/".$arr[$i-1]."/index.php?sontype=$sontype'>$name</a></li>";
		}
		$arr2[] = $str;
	}
	//加载公司简介
	$str5 = "";
	$sql = "select name,id from about order by id asc";
	$res = sqlquery("zhanshi",$sql);
	for($i = 1; $i < count($res); $i++){
		$name = $res[$i]['name'];
		$aid = $res[$i]['id'];
		$str5 .= "<li><a href='/admin/about/index.php?id=$aid'>$name</a></li>";
	}
	//加载主体内容
	$id = 4;
	$sql = "select * from sysset where id=$id";
	$res = sqlquery("zhanshi",$sql,false);
	if($res){
		$name = $res['name'];
		$tel = $res['tel'];
		if($res['phone']){
			$phone = $res['phone'];
		}else{
			$phone = "无";
		}
		if($res['qq']){
			$qq = $res['qq'];
		}else{
			$qq = "无";
		}
		if($res['email']){
			$email = $res['email'];
		}else{
			$email = "无";
		}
		$addres = $res['addres'];
	}
 ?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>联系我们</title>
    <link rel="stylesheet" href="/layui/css/layui.css">
    <link rel="stylesheet" type="text/css" href="/css/all.css">
    <link rel="stylesheet" type="text/css" href="/swiper-4.5.0/dist/css/swiper.css">
	<script src="/layui/layui.js" charset="utf-8"></script>
	<script src="/JQuery/jquery-3.4.1.js"></script>
</head>
<body>
	<div class="top">
		<div class="layui-main">
			<div>
				<input type="text" name="name" id="name" class="layui-input search" placeholder="请输入您要查找的关键字">
				<select name="type" id="type" class="layui-select">
					<option value="1">资讯中心</option>
					<option value="2">工程案例A</option>
					<option value="3" selected>产品搜索</option>
					<option value="4">工程案例B</option>
				</select>
				<a  id="sblayui">
					<img src="/PSD/01as/lsearch.png" >
				</a>
			</div>
			<img src="/PSD/01as/logo-left.png" alt="战石科技">
		</div>
	</div>
	<!--顶部结束-->
	<div class="topHaNav layui-block">
		<div class="layui-main">
			<li>
				<a href="/admin/index.php">
					网站首页
					<br/>
					<span>HOME</p>
				</a>
			</li>
			<li class="top-nav-li">
				<a href="/admin/about/index.php">
					关于我们
					<br/>
					<span>ABOUT US</p>
				</a>
				<ul>
					<?php echo $str5; ?>
				</ul>
			</li>
			<li class="top-nav-li">
				<a href="/admin/aworks/index.php">
					案例中心
					<br/>
					<span>CASE CENTER</p>
				</a>
				<ul>
					<?php echo $arr2[1] ?>
				</ul>
			</li>
			<li class="top-nav-li">
				<a href="/admin/bworks/index.php">
					解决方案
					<br/>
					<span>SOLUTION</p>
				</a>
				<ul>
					<?php echo $arr2[3]; ?>
				</ul>
			</li>
			<li class="top-nav-li">
				<a href="/admin/news/index.php">
					新闻资讯
					<br/>
					<span>NEWS</p>
				</a>
				<ul>
					<?php echo $arr2[0]; ?>
				</ul>
			</li>
			<li class="top-nav-li">
				<a href="/admin/product/index.php">
					产品中心
					<br/>
					<span>PRODUCT</p>
				</a>
				<ul>
					<?php echo $arr2[2]; ?>

				</ul>
			</li>
			<li>
				<a href="/admin/sysset/index.php">
					联系我们
					<br/>
					<span>CONTACT US</p>
				</a>
			</li>
			<li>
				<a href="/admin/message/index.php">
					在线留言
					<br/>
					<span>MESSAGE</span>
				</a>
			</li>
		</div>
	</div>
	<!-- banner开始 -->
	<div class="layui-main banner">
		<div class="layui-inline">
			<p>CONTACT</p>
			<span>联系我们</span>
		</div>
	</div>
	<!-- main开始 -->
	<div class="layui-main zhuti">
		<div class="zhuti-left layui-inline">
			<h3 class="layui-block">
				C
				<p class="layui-inline">ontact<br/><span>联系我们</span></p>
			</h3>
			<div>
				<li style="background: #0860C3;"><a style="color:white;">联系我们</a></li>
			</div>
		</div>
		<div class="zhuti-right">
			<h3 class="layui-block">
				联系我们
				<span>您的位置:&nbsp;<a href="/admin/index.php">首页</a> &gt; 联系我们</span>
			</h3>
			<div class="layui-block">
				 	<div class="layui-fluid">
 		<div class="layui-row">
 			<div class="layui-item">
 				<label for="" class="layui-label">姓名:</label>
 				<div class="layui-inline">
 					<?php echo $name; ?>
 				</div>
 			</div>
 			<br/>
 			<div class="layui-item">
 				<label for="" class="layui-label">联系电话:</label>
 				<div class="layui-inline">
 					<?php echo $tel; ?>
 				</div>
 			</div>
 			<br/>
 			<div class="layui-item">
 				<label for="" class="layui-label">座机:</label>
 				<div class="layui-inline">
 					<?php echo $phone; ?>
 				</div>
 			</div>
 			<br/>
 			<div class="layui-item">
 				<label for="" class="layui-label">qq:</label>
 				<div class="layui-inline">
 					<?php echo $qq; ?>
 				</div>
 			</div>
 			<br/>
 			<div class="layui-item">
 				<label for="" class="layui-label">邮箱:</label>
 				<div class="layui-inline">
 					<?php echo $email; ?>
 				</div>
 			</div>
 			<br/>
 			<div class="layui-item">
 				<label for="" class="layui-label">地址:</label>
 				<div class="layui-inline">
 					<?php echo $addres; ?>
 				</div>
 			</div>
 		</div>
 	</div>
			</div>
		</div>
	</div>
	<!-- main结束 -->
	<div class="footer layui-block">
		<div class="layui-main">
			<div><p>服务电话</p><span>15579511751</span></div>
			<div class="layui-inline">
				<li><a href="/admin/index.php" title="网站首页">网站首页</a></li>
				<li><a href="/admin/about/index.php" title="关于我们">关于我们</a></li>
				<li><a href="/admin/aworks/index.php" title="案例中心">案例中心</a></li>
				<li><a href="/admin/bworks/index.php" title="解决方案">解决方案</a></li>
				<li><a href="/admin/product/index.php" title="产品中心">产品中心</a></li>
				<li><a href="/admin/news/index.php" title="新闻资讯">新闻资讯</a></li>
				<li><a href="/admin/sysset/index.php" title="联系我们">联系我们</a></li>
				<li><a href="/admin/message/index.php" title="在线留言">在线留言</a></li>
				<br/>
				<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;版权所有 © 江西鑫磊光电科技有限公司&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;技术支持：<a href="http://www.ncyateng.com" target="_blank">南昌雅腾信息科技有限公司</a></p>
			</div>
			<img src="/PSD/01as/qchart.png" alt="关注我们">
		</div>
	</div>
	<!-- 底部结束 -->
</body>
<script>
	layui.use(['layer','jquery'],function (){
		var $ = layui.jquery;
		var layer = layui.layer;
		$('#sblayui').on('click',function(){
			var name = $("#name").val();
			if(!name){
				layer.msg('asd');return false;
			}
			var type = $("#type option:selected").val();
			switch(type){
				case '1':
					window.location.href = "/admin/news/index.php?name="+name;
					break;
				case '2':
					window.location.href = "/admin/aworks/index.php?name="+name;
					break;
				case '3':
					window.location.href = "/admin/product/index.php?name="+name;
					break;
				case '4':
					window.location.href = "/admin/bworks/index.php?name="+name;
					break;
				default:
					break;
			}
		});
	});
</script>
</html>