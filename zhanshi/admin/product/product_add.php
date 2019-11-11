<?php 
	include("../../zhanshi.php");
	checkLogin();
	$sql = "select sontype,name from classes where type=3 and classid=0";
	$res = sqlquery("zhanshi",$sql);
	if($res){
		$str = "";
		for($i = 1; $i < count($res); $i++){
			$name = $res[$i]['name'];
			$sontype = $res[$i]['sontype'];
			$str .= "<option value='$sontype'>$name</option>";
		}
	}else{
		$str = "<option value=''>发生致命错误</option>";
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
    <script src='/jQuery/jquery-3.4.1.js' type='text/javascript'></script>
    <script src='/layui/layer/layer.js' type='text/javascript'></script>
    <style>
    	input.layui-input{width:300px;}
    	img.huixian{max-width:100px;max-height:100px;}
    	form{padding-bottom: 40px;}
    </style>
    <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
    <!--[if lt IE 9]>
      <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
      <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
 <body>
 	<div class="layui-container">
 		<div class="layui-row">
 			<form class="layui-form layui-col-md7">
 				<div class="layui-from-item">
	 					<label class="layui-form-label">产品中心</label>
	 					<div class="layui-input-inline">
		 					<input type="text" name="name" class="layui-input" required autocomplete="off">
	 					</div>
	 					<span class="x-red">*必填</span>
 				</div>
 				<div class="layui-form-item">
 					<label for="" class="layui-form-label">必选</label>
 					<div class="layui-input-inline">
	 					<select class="layui-select" name="sontype">
	 						<option value="">必选,如果没有请去主页加类别</option>}
	 						<?php echo $str; ?>
	 					</select>
 					</div>
 				</div>
 				<div class="layui-form-item layui-form-text">
 					<label class="layui-form-label">添加内容</label>
 					<div class="layui-input-block">
 						<textarea name="content" cols="50" rows="10"></textarea><span class="x-red">内容</span>
 					</div>
 				</div>
 				<div class="form-item">
 					<div class="form-input-block">
 						<button class="layui-btn" lay-submit lay-filter="tijiao">提交</button>
 						<button type="reset" class="layui-btn layui-btn-primary" >重置</button>
 					</div>
 				</div>
 			</form>
	 		<div class="layui-col-md5" style="border:1px solid red">
	 				<input type="file" id="image" multiple>
	 				<p>*你需要注意的是:不能一次上传超过10张图片<br>事实上只会存一张照片(等待加一张img表,或者给img字段扩容)<br><span class="x-red">如果传错了,请直接重新传全部的</span><br>不然的话,要不简单不费内存,要不繁杂废内存</p>
	 				<div></div>
	 		</div>
 		</div>
 	</div>
 </body>
 <script>
 	var picList;
 	$("#image").change(function(){
 		var ola = $(this)[0].files;
 		// console.log(ola.length);console.log(ola[0]);return false;
 		var test = new FormData();//FormData可以把POST的数据转成流传输
 		for(var i = 0; i < ola.length; i++){
 			test.append(i,ola[i]);
 		}
 		$.ajax({
 			url:'/admin/product/product_add_save.php'
 			,method:'POST'
 			,data:test
 			,dataType:'json'
 			,async:false
 			// ,cache:false
 			,contentType:false
 			,processData:false
 			,success:function(res){
 				if(res.state == 1){
 					layer.msg('上传成功',{icon:1,time:600},function(){
 						picList = res.names;
 						var str = "";
 						str += "<img src='/images/"+picList[0]+"' class='huixian'>";
 						for(var i = 1; i < picList.length; i++){
 							str += "<img src='"+picList[i]+"' class='huixian'>";
 						}
 						str += "<span class='x-red'>本次上传的图片</span>";
 						$("#image").siblings("div").empty().append(str);
 					});
 				}else{
 					layer.msg(res.state,{icon:2});return false;
 				}
 			}
 			,error:function(res){
 				//
 			}
 		});
 		return false;
 	});
 		

	 layui.use('form', function(){
	 	var form = layui.form;
	 	form.on('submit(tijiao)',function(data){
	 		if(!data.field.sontype){
	 			layer.msg('必须选一个类别哦!',{icon:0,time:1200});return false;
	 		}
	 		if(!data.field.name){
	 			layer.msg('标题不能空哦!',{icon:0,time:1200});return false;
	 		}
		 	if(picList){
		 		allData = {'data':data.field,'img':picList[0]};
		 	}else{
		 		allData = {'data':data.field,'img':''};
		 	}
	 		$.ajax({
	 			url:'/admin/product/product_add_save.php'
	 			,data:allData
	 			,method:'POST'
	 			,dataType:'json'
	 			,success:function(res){
	 				if(res.state == 1){
	 					layer.msg('添加成功',{icon:1,time:800},function(){
	 						// xadmin.close();
	 						xadmin.father_reload();
	 					});
	 				}else{
	 					layer.nsg(res.state,{icon:3,time:1800},function(){
	 						// xadmin.close();
	 						xadmin.father_reload();
	 					})
	 				}
	 			}
	 		});
	 		return false;
	 	});return false;
	 });

 </script>
 </html>