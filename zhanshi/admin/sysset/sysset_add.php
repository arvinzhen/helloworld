<?php 
	include("../../zhanshi.php");
	checkLogin();

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
    <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
    <!--[if lt IE 9]>
        <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
        <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
 </head>
 <body class="login-bg">
 	<div class="layui-fluid">
 		<div class="layui-row">
	 		<form class="layui-form">
	 			<div class="layui-form-item">
	 				<label for="name" class="layui-form-label">联系人:</label>
	 				<div class="layui-input-inline"><input type="text" name="name" lay-verify="name" class="layui-input" autocomplete="off" required></div>
	 			</div>
	 			<div class="layui-form-item">
	 				<label for="tel" class="layui-form-label">联系电话:</label>
	 				<div class="layui-input-inline"><input type="text" name="tel" lay-verify="tel" class="layui-input" autocomplete="off" required maxlength="11"></div>
	 			</div>
	 			<div class="layui-form-item">
	 				<label for="phone" class="layui-form-label">座机:</label>
	 				<div class="layui-input-inline"><input type="text" name="phone" lay-verify="phone" class="layui-input" autocomplete="off" ></div>
	 			</div>
	 			<div class="layui-form-item">
	 				<label for="qq" class="layui-form-label">联系QQ:</label>
	 				<div class="layui-input-inline"><input type="text" name="qq" lay-verify="qq" class="layui-input" autocomplete="off" ></div>
	 			</div>
	 			<div class="layui-form-item">
	 				<label for="email" class="layui-form-label">邮箱:</label>
	 				<div class="layui-input-inline"><input type="text" name="email" lay-verify="email" class="layui-input" autocomplete="off" ></div>
	 			</div>
	 			<div class="layui-form-item">
	 				<label for="addres" class="layui-form-label">地址:</label>
	 				<div class="layui-input-block"><input type="text" name="addres" lay-verify="addres" class="layui-input" autocomplete="off" required></div>
	 			</div>
	 			<div class="layui-form-item">
	 				<label for="" class="layui-form-label"></label>
	 				<div class="layui-inline">
		 				<button class="layui-btn" lay-submit="" lay-filter="tijiao">提交</button>
	 				</div>
	 			</div>
	 		</form>
 		</div>
 	</div>
 </body>
 <script>
 	layui.use(['form','layer','jquery'],function(){
 		$ = layui.jquery;
 		var form = layui.form;
 		var layer = layui.layer;
 		form.verify({
 			name:function(value){
 				if(!value){
 					return "一定要填写姓名啊!";
 				}
 			},
 			tel:function(value){
 				var num = /^\d{11}$/;
 				if(!num.test(value)){
 					return "手机号码不符合格式!";
 				}
 			},
 			phone:function(value){
 				var num = /^(\d+)-(\d+)$/;
 				if(value && !num.test(num)){
 					return '不符合座机号码格式';
 				}
 			},
 			qq:function(value){
 				var num = /^\d{6,}$/;
 				if(value && !num.test(value)){
 					return '不符合qq的格式!';
 				}
 			},
 			email:function(value){
 				var num = /^([a-z0-9\.-_]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$/;
 				if(value && !num.test(value)){
 					return '不符合邮箱格式!';
 				}
 			},
 			addres:function(value){
 				if(!value){
 					return '地址必须要填!';
 				}
 			}

 		});

 		form.on('submit(tijiao)',function(data){
 			$.ajax({
 				url:'/admin/sysset/sysset_add_save.php',
 				method:'POST',
 				data:data.field,
 				dataType:'json',
 				success:function(res){
 					if(res.state == 1){
 						layer.msg('录入成功',{icon:1,time:800},function(){
 							xadmin.close();
 							xadmin.father_reload();
 						})
 					}else{
 						layer.msg(res.state,{icon:2,time:1200});
 					}
 				}
 			});
 			return false;
 		});
 	});
 </script>
 </html>