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
					{$data.name}
				</div>
			</div>
			<div class="layui-form-item">
				<label for="l-express" class="layui-form-label">电话:</label>
				<div class="layui-input-inline">
					{$data.phone}
				</div>
			</div>
			<div class="layui-form-item">
				<label for="l-express" class="layui-form-label">您的留言:</label>
				<div class="layui-input-inline">
					{$data.content}
				<br class="clearfix" />
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
		})
	</script>
</html>