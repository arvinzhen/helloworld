<?php 
	include("../../zhanshi.php");
    checkLogin();
	if($_GET){
		$id = $_GET['id'];
		$url = "/admin/users/user_edit_save.php?id=$id";
		$sql = "select username,realname from user where id=$id";
		// ohno($sql);
		$res = sqlquery("zhanshi", $sql, false);
		if($res){
			$username = $res['username'];
			$realname = $res['realname'];
		}else{
			echo "<script>alert('非法操作');history.back();</script>";
			die();
		}
	}else{
		echo "<script>alert('非法进入');history.back();</script>";
		die();
	}
 ?>
 
<!DOCTYPE html>
<html class="x-admin-sm">
    
    <head>
        <meta charset="UTF-8">
        <title>用户添加</title>
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
        	.layui-word-aux{color:black !important;}
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
                <form class="layui-form">
                    <div class="layui-form-item">
                        <label for="L_username" class="layui-form-label">
                            <span class="x-red">*</span>用户名</label>
                        <div class="layui-input-inline">
                            <input type="text" id="L_username" name="username" required="" lay-verify="nikename" autocomplete="off" class="layui-input" value='<?php echo $username; ?>'></div>
                    </div>
                    <div class="layui-form-item">
                        <label for="L_realname" class="layui-form-label">
                            <span class="x-red">*</span>真名</label>
                        <div class="layui-input-inline">
                            <input type="text" id="L_realname" name="realname" required="" lay-verify="realname" autocomplete="off" class="layui-input" value="<?php echo $realname; ?>"></div>
                    </div>
                    <div class="layui-form-item">
                        <label for="L_repass" class="layui-form-label"></label>
                        <button class="layui-btn" lay-filter="add" lay-submit="">修改</button></div>
                </form>
            </div>
        </div>
        <script>layui.use(['form', 'layer','jquery'],
            function() {
                $ = layui.jquery;
                var form = layui.form,
                layer = layui.layer;

                //自定义验证规则
                form.verify({
                    nikename: function(value) {
                        if (value.length < 5) {
                            return '昵称至少得5个字符啊';
                        }
                    },
                    realname: function(value) {
                    	if(!value){
                    		return '需要你的真实名字';
                    	}
                    }
                });

                //监听提交
                form.on('submit(add)',
                function(data) {
                	<?php echo "var linkurl = '$url';"; ?>
                	// console.log(data.field);
                	// return false;
                    $.ajax({
                    	type:'POST',
                    	data:data.field,
                    	url:linkurl,
                    	dataType:'json',
                    	success:function(res){
                    		if(res.state == 1){
                    			layer.alert('操作成功',{
	                    			icon:6
                    			},function(){
                    				xadmin.close();
                    				xadmin.father_reload();
                    			});
                    		}else{
                    			layer.alert(res.state,{
                    				icon:2
                    			},function(){
                    				xadmin.close();
                    				xadmin.father_reload();
                    			});
                    		}
                    	}
                    });
                    //发异步，把数据提交给php
                    return false;
                });

            });</script>
    </body>

</html>