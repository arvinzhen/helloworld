<?php 
	include("../../zhanshi.php");
	checkLogin();
	if($_GET){
		$id = $_GET['id'];
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
		}else{
			echo "<script>alert('发生错误,该项目已被删除!');history.back();</script>";
		}
	}else{
		echo "<script>alert('请选择项目');history.back();</script>";die();
	}
 ?>
 <!DOCTYPE html>
 <html class="x-admin-sm">
 <head>
 	<meta charset="UTF-8">
 	<title>Document</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <link rel="stylesheet" href="/css/font.css">
    <link rel="stylesheet" href="/css/xadmin.css">
    <script type="text/javascript" src="/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="/js/xadmin.js"></script>
    <style type="text/css" media="screen">
    	.layui-item{font-size:18px;}
    	.layui-inline{border-bottom:2px solid red;}
    	div.layui-item>label.layui-label{float: left;width:90px;}
    </style>
    <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
    <!--[if lt IE 9]>
        <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
        <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
 </head>
 <body class="login-bg">
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
 </body>
 </html>