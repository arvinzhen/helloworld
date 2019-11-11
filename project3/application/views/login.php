<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0,user-scalable=no">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>管理员登入</title>
    <link href="/public/css/login.css" type="text/css" rel="stylesheet">
    <link rel="stylesheet" href="/public/css/font.css">
    <link rel="stylesheet" href="/public/css/xadmin.css">
    <script type="text/javascript" src="/public/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="/public/js/xadmin.js"></script>
        <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
        <!--[if lt IE 9]>
            <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
            <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
</head>
<body class="login-bg">
    <div class="bg"></div>
    <div class="login">
        <form class="layui-form">
            <div class="input">
                <label for="username">用户名:</label>
                <input type="text" autocomplete="off" name="username" class="yl">
            </div>
            <div class="input">
                <label for="userpwd">密码:</label>
                <input type="password" name="userpwd" class="yl">
            </div>
            <div class="form-btn">
                <button id="btn" class="layui-btn" lay-filter="add" lay-submit="">Login</button><br/>
            </div>
            <div>
                <?php echo $addition; ?>
            </div>
            <div>
                <p><a href="<?php echo base_url('login/quit'); ?>">退出登入</a></p>
            </div>
        </form>
    </div>
</body>
<script>
    var t = document.getElementsByClassName("input");
    for(var i = 0; i < t.length; i++){
        (function (){
            var a = t[i].getElementsByTagName("input")[0];
            t[i].onclick = function (){
                a.focus();
                a.setAttribute('class','xiah');
            }
            a.onblur = function (){
                this.setAttribute("class","yl");
            }
        })();
    }

    layui.use(['jquery','form'],function(){
        var $ = layui.jquery;
        var form = layui.form;

        form.on('submit(add)',function(data){
            $.ajax({
                url:'<?php echo site_url('login/checklogin'); ?>'
                ,data:data.field
                ,method:'POST'
                ,dataType:'json'
                ,success:function(res){
                    if(res.state == 1){
                        parent.location.href = "<?php echo base_url('admin/allin') ?>";return false;
                    }
                    layer.msg('账号或者密码错误',{icon:2,time:1200});
                    return false;
                }
            });
            return false;
        });
    });
</script>
</html>