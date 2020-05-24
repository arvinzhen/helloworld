<!DOCTYPE html>
<html class="x-admin-sm">
    <head>
        <meta charset="UTF-8">
        <title>欢迎页面-X-admin2.2</title>
        <meta name="renderer" content="webkit">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
        <link rel="stylesheet" href="__CSS__/font.css">
        <link rel="stylesheet" href="__CSS__/xadmin.css">
        <link rel="stylesheet" href="__CSS__/test.css">
        <script src="__LIB__/layui/layui.js" charset="utf-8"></script>
        <script type="text/javascript" src="__JS__/xadmin.js"></script>
        <!--[if lt IE 9]>
          <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
          <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <body>
	<div class="layui-fluid">
		<form class="layui-form">
			<div class="layui-form-item">自己写,没哟select
				<label for="l-express" class="layui-form-label">姓名:</label>
				<div class="layui-input-inline">
					<input type="text" name="name" id="name" autocomplete="off" required="" lay-verify="required" class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<label for="l-express" class="layui-form-label">电话:</label>
				<div class="layui-input-inline">
					<input type="text" name="phone" id="phone" autocomplete="off" required="" lay-verify="phone" class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<label for="l-express" class="layui-form-label">您的留言:</label>
				<div class="layui-input-inline">
					<textarea rows="5" name="content" class="shuruqu"></textarea>
				<br class="clearfix" />
				</div>
			</div>
			<div class="layui-form-item">
				<label for="l-express" class="layui-form-label"></label>
				<div class="layui-input-inline">
					<button id="add"  class="layui-btn" lay-filter="add" lay-submit="">添加</button>
				</div>
			</div>
		</form>
	</div>
	</body>
	<script>
		layui.use(['form','layer'],function(){
			var form = layui.form
			,layer = layui.layer;

			//监听提交
			form.on('submit(add)',function(data){
				$("#add").prop('disabled',true);//防止一直提交添加相同数据
				// console.log(data);return false;
				$.ajax({
					url:'{:url('@admin/message/save')}'
					,method:'POST'
					,data:data.field
					,dataType:'json'
					,success:function(res){
						if(res.state == 1){
							layer.msg("添加成功",{icon:1,time:800},function(){
								xadmin.close();
								xadmin.father_reload();
							});
						}else{
							layer.msg(res.state,{icon:2,time:1200},function(){
								$("#add").prop('disabled',false);
							});
						}
					}
				});
				return false;
			});
		})
	</script>
</html>