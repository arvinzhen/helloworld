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
				<label for="l-express" class="layui-form-label">职位:</label>
				<div class="layui-input-inline">
					<input type="text" name="name" id="name" autocomplete="off" required="" lay-verify="required" class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">自己写,没哟select
				<label for="l-express" class="layui-form-label">部门:</label>
				<div class="layui-input-inline">
					<input type="text" name="dpm" id="dpm" autocomplete="off" required="" lay-verify="required" class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<label for="l-express" class="layui-form-label">学历:</label>
				<div class="layui-input-inline">
					<select name="edu" id="edu" class="layui-select">
						<option value="无要求">无要求</option>
						<option value="小学">小学</option>
						<option value="初中">初中</option>
						<option value="高中">高中</option>
						<option value="专科">专科</option>
						<option value="本科">本科</option>
						<option value="研究生">研究生</option>
						<option value="硕士">硕士</option>
						<option value="博士">博士</option>
					</select>
				</div>
			</div>
			<div class="layui-form-item">请带单位
				<label for="l-express" class="layui-form-label">期望薪资:</label>
				<div class="layui-input-inline">
					<input type="text" name="eps" id="eps" autocomplete="off" required="" lay-verify="required" class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">人数:num /ep:2-10人 || 4人
				<label for="l-express" class="layui-form-label">人数:</label>
				<div class="layui-input-inline">
					<input type="text" name="num" id="num" autocomplete="off" required="" lay-verify="required" class="layui-input" onKeyUp="value=value.replace(/[^\d\-]/ig,'')">
				</div>
			</div>
			<div class="layui-form-item">
				<label for="l-express" class="layui-form-label">岗位职责:</label>
				<div class="layui-input-inline">
					<textarea rows="5" class="shuruqu"  maxlength="200" name="duty" οnchange="this.value=this.value.substring(0,255)" οnkeydοwn="this.value=this.value.substring(0,255)" οnkeyup="this.value=this.value.substring(0,255)" ></textarea>
				<br class="clearfix" />
				<span>别超过251个字符</span>
				</div>
			</div>
			<div class="layui-form-item">
				<label for="l-express" class="layui-form-label">岗位要求:</label>
				<div class="layui-input-inline">
					<textarea rows="5" class="shuruqu"  maxlength="200" name="claim" οnchange="this.value=this.value.substring(0,500)" οnkeydοwn="this.value=this.value.substring(0,500)" οnkeyup="this.value=this.value.substring(0,500)" ></textarea>
				<br class="clearfix" />
				<span>别超过500个字符</span>
				</div>
			</div>
			<div class="layui-form-item">
				<label for="l-express" class="layui-form-label">福利待遇:</label>
				<div class="layui-input-inline">
					<textarea rows="5" class="shuruqu"  maxlength="200" name="treat" οnchange="this.value=this.value.substring(0,255)" οnkeydοwn="this.value=this.value.substring(0,255)" οnkeyup="this.value=this.value.substring(0,255)" ></textarea>
				<br class="clearfix" />
				<span>别超过251个字符</span>
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
				// $("#add").prop('disabled',true);//防止一直提交添加相同数据
				// console.log(data);return false;
				$.ajax({
					url:'{:url('@admin/offer/save')}'
					,method:'POST'
					,data:data.field
					,dataType:'json'
					,success:function(res){
						if(res.state == 1){
							layer.msg("添加成功",{icon:1,time:800},function(){
								// xadmin.close();
								// xadmin.father_reload();
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