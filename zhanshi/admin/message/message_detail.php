<?php 
	include('../../zhanshi.php');
	checkLogin();
	if($_GET){
		if(isset($_GET['id'])){
			$id = $_GET['id'];
			$sql = "select * from message where id=$id";
			$res = sqlquery("zhanshi",$sql,false);
			if($res){
				$id = $res['id'];
				$name = $res['name'];
				$title = $res['title'];
				$tel = $res['tel'];
				if($res['content']){
					$content = $res['content'];
				}else{
					$content = "无";
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
				$releasetime = date("Y-m-d H:i:s",$res['releasetime']);
			}
		}else{
			echo "<script>alert('请选择要修改的项目');location.href='/admin/index.php';</script>";die();
		}
	}else{
		echo "<script>location.href='/admin/index.php';</script>";die();
	}
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
    <style>
    	body{font-size: 16px;}
    	span{
    		color:red;
    		border-bottom:3px solid blue;
    		font-size: 18px;
    	}
    	p{
    		font-size:20px;
    	}
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
 			<div class="layui-col-md4">
 				<div class="layui-block">id:<span><?php echo $id; ?></span></div>
 				<div class="layui-block">姓名:<span><?php echo $name; ?></span></div>
 				<div class="layui-block">电话:<span><?php echo $tel; ?></span></div>
 				<div class="layui-block">QQ:<span><?php echo $qq; ?></span></div>
 				<div class="layui-block">Email:<span><?php echo $email; ?></span></div>
 				<div class="layui-block">上传时间:<span><?php echo $releasetime; ?></span></div>
 			</div>
 			<div class="layui-col-md8">
 				<div class="layui-block"><label class="layui-label">标题:</label>
 				<p style="text-align: center;color:green;"><?php echo $title; ?></p>
 				</div>
 				<div class="layui-block">
 					<label class="layui-label">内容:</label>
 					<p style="line-height: 20px;text-indent: 2rem;"><?php echo $content; ?></p>
 				</div>
 			</div>
 		</div>
 	</div>
 </body>
 </html>