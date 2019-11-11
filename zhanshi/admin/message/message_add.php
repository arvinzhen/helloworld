<?php
    include("../../zhanshi.php");
    checkLogin();
?>
<!DOCTYPE html>
<html class="x-admin-sm">
<head>
    <meta charset="UTF-8">
    <title>公司简介标题管理</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <link rel="stylesheet" href="/css/font.css">
    <link rel="stylesheet" href="/css/xadmin.css">
    <script type="text/javascript" src="/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="/js/xadmin.js"></script>
    <style>
    	td.td-manage>a{display: block;width: 100%;height:100%;padding:0;}
    	#as{width:35px;}
    </style>
    <!--[if lt IE 9]>
      <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
      <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body class="login-bg">
    <div class="layui-fluid">
        <div class="layui-row">
            <form class="layui-form">
                <div class="layui-form-itme layui-block">
                    <label for="title" class="layui-form-label">标题:</label>
                    <div class="layui-input-block">
                        <input type="text" id="title" name="title" required class="layui-input" required autocomplete="off">
                    </div>
                </div>
                <br/>
                <div class="layui-item layui-block"><!-- class="layui-form-itme layui-block"    class="layui-form-label"   class="layui-inline"-->
                    <label for="content" class="layui-form-label">内容:</label>
                    <div class="layui-inline">
                        <textarea id="content" name="content" cols="30" rows="10" style="max-width: 1280px;min-width: 400px;min-height:100px;max-height:600px;"></textarea>
                        <span style="position: absolute;bottom:0;right:-120px;">拖动来控制写入行数</span>
                        <!-- <span style="float: left;">留言内容</span> -->
                    </div>
                </div>
                <div class="layui-form-itme layui-inline">
                    <label for="username" class="layui-form-label">姓名:</label>
                    <div class="layui-input-inline">
                        <input type="text" id="username" name="username" class="layui-input" required autocomplete="off">
                    </div>
                </div>
                <div class="layui-form-itme layui-inline">
                    <label for="tel" class="layui-form-label">电话:</label>
                    <div class="layui-input-inline">
                        <input type="text" id="tel" name="tel" class="layui-input" lay-verify="tel" required autocomplete="off" maxlength="11">
                    </div>
                </div>
                <div class="layui-form-itme layui-inline">
                    <label for="qq" class="layui-form-label">QQ:</label>
                    <div class="layui-input-inline">
                        <input type="text" id="qq" class="layui-input" name="qq" autocomplete="off" lay-verify="qq">
                    </div>
                </div>
                <br/>
                <div class="layui-form-itme layui-inline">
                    <label for="email" class="layui-form-label">邮箱:</label>
                    <div class="layui-input-inline">
                        <input type="text" id="email" name="email" class="layui-input" lay-verify="email" autocomplete="off" style="width:300px;">
                    </div>
                </div>
                <div class="layui-form-itme">
                    <label for="" class="layui-form-label"></label>
                    <button class="layui-btn" lay-filter="tijiao" lay-submit="">发送</button>
                </div>
            </form>
        </div>
    </div>
</body>
<script>
    layui.use(['form','layer','jquery'],function(){
        $ = layui.jquery;
        var form = layui.form;
        var layer = layui.layer;
        form.verify({
            tel:function(value){
                var number = /^\d{11}$/;
                if(!value){
                    return "没填写手机号哦!";
                }
                if(!number.test(value)){
                    return "手机号码格式不对哦!";
                }
            },
            qq:function(value){
                var number = /^\d{6,}$/;
                if(value && !number.test(value)){
                    return "QQ号码格式不对";
                }
            },
            email:function(value){
                var emailReg = /^([0-9a-z_\.-]+)@([a-z\d\.-]+)\.([a-z\.]{2,6})$/;
                if(value && !emailReg.test(value)){
                    return "邮箱格式不对哦";
                }
            }
        });
        form.on('submit(tijiao)',function(data){
            $.ajax({
                url:'/admin/message/message_add_save.php',
                method:'POST',
                data:data.field,
                dataType:'json',
                success:function(res){
                    if(res.state == 1){
                        layer.msg('已发送',{icon:1,time:1200},function(){
                            xadmin.close();
                            xadmin.father_reload();
                        });
                    }else{
                        layer.msg(res.state,{icon:2,time:1000},function(){
                            xadmin.close();
                            xadmin.father_reload();
                        });
                    }
                }
            });
            return false;
        });
    });
</script>
</html>