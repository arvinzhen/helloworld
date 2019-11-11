<!DOCTYPE html>
<html class="x-admin-sm">
<head>
	<meta charset="UTF-8">
	<title>文件上传</title>
	<meta name="renderer" content="webkit|ie-comp|ie-stand">
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
				<cite>主页面</cite>
			</a>
		</span>
		<a href="javascript:;" style="line-height:1.6em;margin-top:3px;float:right;" onclick="location.reload()" title="刷新" class="layui-btn layui-btn-small">
			<i class="layui-icon layui-icon-refresh" style="line-height: 30px;"></i>
		</a>
	</div>
	<div class="layui-fluid">
		<div class="layui-row">
			<div class="layui-col-md12">
				<div class="layui-card">
					<div class="layui-card-header"><h3 class="text-center">文件上传页面</h3></div>
					<div class="layui-card-body">
						<form class="layui-form layui-col-space5" method="GET" action="{:url('@admin/download/index')}">
							<div class="layui-inline layui-show-xs-block">
								<input class="layui-input" placeholder="开始日期" autocomplete="off" name="start" id="start">
							</div>
							<div class="layui-inline layui-show-xs-block">
								<input class="layui-input" placeholder="结束日期" autocomplete="off" name="end" id="end">
							</div>
							<div class="layui-inline layui-show-xs-block">
								<input type="text" name="title" placeholder="文件名" class="layui-input" autocomplete="off">
							</div>
							<div class="layui-inline layui-show-xs-block">
								<button class="layui-btn" lay-submit="" lay-filter="search"><i class="layui-icon">&#xe615;</i></button>
							</div>
						</form>
					</div>
					<div class="layui-card-header">
						<button class="layui-btn layui-btn-danger" onclick="delAll()"><i class="layui-icon"></i>批量删除</button>
						<button class="layui-btn" onclick="xadmin.open('上传文件','{:url('@admin/download/create')}','','')"><i class="layui-icon"></i>添加</button>
					</div>
					<div id="rongqi">
						<input type="hidden" value="{$data}" id="rehtml">
						
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<script>
	layui.use(['form','laydate','jquery','layer'],function(){
		var $ = layui.jquery;
		var form = layui.form
		,laydate = layui.laydate
		,layer = layui.layer;
		//初始化
		$(document).ready(function(){
			$("#rongqi").html($("#rehtml").val());
			form.render();
		})
		//刷新日期
		laydate.render({
			elem:'#start'
		});

		laydate.render({
			elem:'#end'
		});
		form.on("checkbox(checkall)",function(data){
			if(data.elem.checked){
				$("input[name='id[]']").prop('checked',true);
			}else{
				$("input[name='id[]']").prop('checked',false);
			}
			form.render('checkbox');
		});
		form.on("checkbox(checknull)",function(data){
			$("input[name='id[]']").each(function(index){
				if($(this).prop('checked')){
					$(this).prop('checked',false);
				}else{
					$(this).prop('checked',true);
				}
				form.render('checkbox');
			});
		});
		//Jiantin
		$(document).on('click','.shanchu',function(){
			var id = $(this).attr('data-id');
			$.ajax({
				url:'{:url('@admin/download/delete/')}'+id
				,method:'POST'
				,data:{}
				,dataType:'json'
				,success:function(res){
					if(res.state == 1){
						layer.msg('删除成功',{icon:1,time:800},function(){
							$("#rongqi").html(res.data);
							form.render();
						});
					}else{
						layer.msg("删除失败",{icon:2,time:1200});
					}
				}
			});
			return false;
		});
	});

	function delAll(){
		var ids = [];
		$("input[name='id[]']").each(function(){
			if($(this).prop('checked')){
				ids.push($(this).val());
			}
		});
		if(ids.length == 0){
			layer.msg("请勾选删除项",{icon:2,time:1200});return false;
		}
		layer.confirm("确认要删除:"+ids,function(){
			$.ajax({
				url:'{:url('@admin/download/deletes')}'
				,data:{'ids':ids}
				,method:'POST'
				,dataType:'json'
				,success:function(res){
					if(res.state == 1){
						layer.msg("删除成功",{icon:1,time:800},function(){
							xadmin.father_reload();
						});
					}else{
						layer.msg(res.state,{icon:2,time:1200},function(){
							xadmin.father_reload();
						});
					}
				}
			});
		})
		return false;
	}
</script>
</html>