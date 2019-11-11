<!DOCTYPE html>
<html class="x-admin-sm">
<head>
	<meta charset="UTF-8">
	<title>文件上传页面</title>
	<meta name="render" content="webkit|ie-comp|ie-stand">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
	<meta http-equiv="Cache-Control" content="no-siteapp" />
	<link rel="stylesheet" href="__CSS__/font.css">
	<link rel="stylesheet" href="__CSS__/test.css">
	<link rel="stylesheet" href="__CSS__/xadmin.css">
	<!-- <link rel="stylesheet" href="__CSS__/theme2.css"> -->
    <script src="__LIB__/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="__JS__/xadmin.js"></script>
    <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
    <!--[if lt IE 9]>
      <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
      <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
	<div class="x-nav">
		<span class="layui-breadcrumb">
			<a href="">首页</a>
			<a href="">文件上传管理</a>
			<a>
				<cite>上传</cite>
			</a>
		</span>
		<a href="javascript:;" class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right;" onclick="location.reload()" title="刷新"><i class="layui-icon layui-icon-refresh" style="line-height: 30px;"></i></a>
	</div>
	<div class="layui-fluid">
		<div class="layui-row">
			<div class="layui-col-md12">
				<div class="layui-card">
					<div class="layui-card-header">
						<h3 class="text-center">文件上传页</h3>
					</div>
					<div class="layui-card-body">
						<form class="layui-form">
							<div class="layui-form-item">
								<label class="layui-form-label">标题:</label>
								<div class="layui-input-inine">
									<input type="text" class="layui-input" autocomplete="off" lay-verify="required" required id="title" name="title">
								</div>
							</div>
							<div class="layui-form-item">
								<label class="layui-form-label">文件:</label>
								<div class="layui-input-inine">
									<input type="file" class="layui-input" lay-verify="xuyao" id="wenjian" name="wenjian">
								</div>
							</div>
							<div class="layui-form-item">
								<label class="layui-form-label"></label>
								<div class="layui-input-inline">
									<button type="button" class="layui-btn" lay-submit="" lay-filter="add">提交</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<script>
	layui.use(['form','layer','jquery'],function(){
		$ = layui.jquery;
		var form = layui.form
		,layer = layui.layer;
		//jiancha
		form.verify({
			xuyao:function(value,item){
				if(!value){
					return "必填项没填";
				}
			}
		});
		//jianting
		form.on('submit(add)',function(data){
			var fobj = data.form[1].files[0];
			var formData = new FormData();
			formData.append('wenjian',fobj);
			formData.append('title',data.field.title);
			$.ajax({
				url:'{:url('@admin/download/save')}'
				,method:'POST'
				,data:formData
				,dataType:'json'
				,cache:false
				,processData:false
				,contentType:false
				,success:function(res){
					if(res.state == 1){
						layer.msg('添加成功',{icon:1,time:1000},function(){xadmin.close();xadmin.father_reload();});//
					}else{
						layer.msg(res.state,{icon:2,time:1200},function(){xadmin.father_reload();});//
					}
				}
			});
			return false;
		});
	});
</script>
</html>