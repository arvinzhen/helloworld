<?php 
	include("../../zhanshi.php");
	checkLogin();
	if(!$_GET){
		echo "<script>history.back();</script>";die();
	}
	$id = $_GET["id"];
	$sql = "select * from product where id=$id";
	$res = sqlquery("zhanshi",$sql,false);
	$name = $res["name"];
	$content = $res["content"];
	$classid = $res["classid"];
	$image = $res["image"];
	$visit = $res["visit"];
	$releasetime = date("Y-m-d H:i:s",$res["releasetime"]);
 ?>
<!DOCTYPE html>
<html class="x-admin-sm">
<head>
    <meta charset="UTF-8">
    <title>后台登录-admin</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <link rel="stylesheet" href="/css/font.css">
    <link rel="stylesheet" href="/css/xadmin.css">
    <script type="text/javascript" src="/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="/js/xadmin.js"></script>
    <script src='/jQuery/jquery-3.4.1.js' type='text/javascript'></script>
    <script src='/layui/layer/layer.js' type='text/javascript'></script>
    <style>
    	input.layui-input{width:300px;}
    	img.huixian{max-width:100px;max-height:100px;}
    	div{margin-top: 15px;}
    </style>
    <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
    <!--[if lt IE 9]>
      <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
      <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
 <body>
 	<div class="layui-fluid">
 		<div class="layui-inline">标题:&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $name; ?></div><br>
 		<div class="layui-inline">内容:&nbsp;&nbsp;&nbsp;&nbsp;<p><?php echo $content; ?></p></div><br>
 		<div class="layui-inline">id:&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $id; ?></div><br>
 		<div class="layui-inline">classid:&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $classid; ?></div><br>
 		<div class="layui-inline">小图片:&nbsp;&nbsp;&nbsp;&nbsp;<img src="/images/<?php echo $image; ?>" alt=""></div><br>
 		<div class="layui-inline">浏览量:&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $visit; ?></div><br>
 		<div class="layui-inline">发布时间:&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $releasetime; ?></div><br>
 	</div>
 </body>
 </html>