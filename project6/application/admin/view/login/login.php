<!DOCTYPE html>
<html  class="x-admin-sm">
<head>
	<meta charset="UTF-8">
	<title>为力-管理员登入</title>
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
        <div class="message">为力-管理员登入</div>
        <div id="darkbannerwrap"></div>
        <form class="layui-form" id="cz">
            <input type="hidden" name="__token__" value="{$Request.token}" />
            <input name="username" placeholder="用户名" autocomplete="off"  type="text" lay-verify="required" class="layui-input" >
            <hr class="hr15">
            <input name="password" lay-verify="required" autocomplete="off" placeholder="密码"  type="password" class="layui-input">
            <hr class="hr15">
            <div class="layui-input-inline">
            <input name="code" lay-verify="required" id="code" type="text" maxlength="5" onKeyUp="value=value.replace(/[^\w]/ig,'')">
            <img id="verifycode" src="{:url('admin/login/verify')}" onclick="shuaxin()" alt="captcha" /></div>
            <hr class="hr15">
            <input value="登录" lay-submit="" lay-filter="login" style="width:100%;" type="submit">
            <hr class="hr20" >
            <div class="layui-input-inline">
            	<a href="{:url('admin/users/create')}">注册</a>
            </div>
            <hr class="hr20" >
            <div class="layui-input-inline">
            	<?php if($mz){echo "<p>您已经登入:<span class='x-red'>".$username."</span>,<a href='".url('admin/index/index')."' style='text-decoration:underline'>点击直达管理页面</a></p>";} ?>
            </div>
        </form>
    </div>

    <script>
        $(function  () {
            layui.use('form', function(){
              var form = layui.form;
              form.on('submit(login)', function(data){
                // console.log(data.field);return false;
                $.ajax({
                    url:'{:url('admin/login/loginCheck')}'
                    ,data:data.field
                    ,method:'POST'
                    ,dataType:'json'
                    ,success:function(res){
                		if(res.state == 1){
                			layer.msg("验证码错误",{icon:2,time:500});
                            shuaxin();return false;
                        }
                        if(res.state == 0){
                            layer.msg("账号或密码错误,你懂我意思吧!",{icon:2,time:1200});
                            $('#cz').reset();
                            shuaxin();return false;
                        }
                        if(res.state == 3){
                            layer.msg('权限不够',{icon:2,time:1200});
                            return false;
                        }
                        if(res.state == 2){
                            window.location.href='{:url('admin/index/index')}';
                        }
                	}
                });
                return false;
              });
            });
        })
    </script>
    <script>
        function shuaxin(){
            document.getElementById("verifycode").src='{:url('admin/login/verify')}?d'+Math.random();
        }
    </script>
    <!-- 底部结束 -->
</body>
</html>