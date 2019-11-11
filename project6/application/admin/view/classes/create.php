<!DOCTYPE html>
<html class="x-admin-sm">
    <head>
        <meta charset="UTF-8">
        <title>为力-后台管理</title>
        <meta name="renderer" content="webkit">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
        <link rel="stylesheet" href="__CSS__/font.css">
        <link rel="stylesheet" href="__CSS__/xadmin.css">
        <!-- <link rel="stylesheet" href="__CSS__/test.css"> -->
        <script src="__LIB__/layui/layui.js" charset="utf-8"></script>
        <script type="text/javascript" src="__JS__/xadmin.js"></script>
        <!--[if lt IE 9]>
          <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
          <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
	<body>
		<div class="layui-fluid">
			<div class="layui-form">
				<div class="layui-form-item">
					<label class="layui-form-label">顶级title</label>
					<div class="layui-input-inline">
						<select name="toptitle" lay-verify="leibie" class="layui-select">
							<option value="">必选</option>
							<option value="1">关于我们</option>
							<option value="2">新闻资讯</option>
							<option value="3">企业服务</option>
							<option value="4">员工服务</option>
							<option value="5">求职招聘</option>
							<option value="6">联系我们</option>
							<option value="7">下载中心</option>
						</select>
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">子title</label>
					<div class="layui-input-inline">
						<input type="text" name="sontitle" class="layui-input" required lay-verify="required">
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label"></label>
					<div class="layui-input-inline">
						<button id="add" class="layui-btn" lay-filter="add" lay-submit="">提交</button>
					</div>
				</div>
			</div>
		</div>
	</body>
	<script>
		layui.use(['form','layer'],function(){
			var form = layui.form
			,layer = layui.layer;
			//监听顶级title
			form.verify({
				leibie:function(value,item){
					if(!value){
						layer.msg("顶级titile没选",{icon:2,time:1400});
						return false;
					}
				}
			});
			//监听提交
			form.on('submit(add)',function(data){
				$("#add").prop('disabled',true);
				$.ajax({
					url:'{:url('@admin/classes/save')}'
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
								xadmin.close();
							});
						}
					}
				});
				return false;
			});
		})
	</script>
</html>