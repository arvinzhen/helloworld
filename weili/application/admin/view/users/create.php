<!DOCTYPE html>
<html  class="x-admin-sm">
<head>
	<meta charset="UTF-8">
	<title>为力-注册管理员</title>
	<meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="stylesheet" href="__CSS__/font.css">
    <link rel="stylesheet" href="__CSS__/login.css">
	<link rel="stylesheet" href="__CSS__/xadmin.css">
    <script type="text/javascript" src="__LIB__/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="__JS__/xadmin.js"></script>
    <script type="text/javascript" src="__JS__/jquery.min.js"></script>
    <!--[if lt IE 9]>
      <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
      <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body class="login-bg">
    <div class="login layui-anim layui-anim-up">
        <div class="message">为力-注册管理员</div>
        <div id="darkbannerwrap"></div>
        <form class="layui-form" >
            <input type="hidden" name="__token__" value="{$Request.token}" />
            <input name="username" placeholder="用户名"  type="text" lay-verify="required" class="layui-input" >
            <hr class="hr15">
            <input type="password" id="L_pass" name="pass" placeholder="密码"  required="" lay-verify="pass" autocomplete="off" class="layui-input">
            <hr class="hr15">
            <input type="password" id="L_repass" placeholder="确认密码" name="repass" required="" lay-verify="repass" autocomplete="off" class="layui-input">
            <hr>
            <div class="layui-form-item">
                <div class="layui-input-inline">
                    <select name="level" id="level" class="layui-select">
                        <option value="1">普通会员</option>
                        <option value="2">高级会员</option>
                        <option value="3">管理员1级</option>
                        <option value="4">管理员2级</option>
                        <option value="5">管理员3级</option>
                        <option value="6">管理员4级</option>
                        <option value="7">管理员5级</option>
                        <option value="8">管理员6级</option>
                        <option value="9">管理员7级</option>
                    </select>
                </div>
            </div>
            <hr class="hr15">
            <input value="注册" lay-submit lay-filter="dr" style="width:100%;" type="submit">
            <hr class="hr20" >
        </form>
    </div>

    <script>
        $(function  () {
            layui.use(['form','layer'], function(){
              var form = layui.form
              ,layer = layui.layer;

              form.verify({
                pass: [/(.+){6,12}$/, '密码必须6到12位'],
                repass: function(value) {
                    if ($('#L_pass').val() != $('#L_repass').val()) {
                        return '两次密码不一致';
                    }
                }
            });
              form.on('submit(dr)', function(data){
                $.ajax({
                	url:"{:url('admin/users/save')}"
                	,data:data.field
                	,method:'POST'
                	,dataType:'json'
                	,success:function(res){
                		if(res.state == 1){
                			layer.msg("添加成功",{icon:1,time:800},function(){
                				xadmin.close();
                				xadmin.father_reload();
                			});
                		}else{
	                		layer.msg(res.state,{icon:2,time:1200},function(){
		                		xadmin.father_reload();
	                		});
                		}
                	}
                });
                return false;
              });
            });
        })
    </script>
    <!-- 底部结束 -->
</body>
</html>