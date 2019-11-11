<!DOCTYPE html>
<html class="x-admin-sm">
<head>
    <meta charset="UTF-8">
    <title>新闻添加</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
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
<body>
<div class="layui-main">
    <div class="layui-row">
        <form class="layui-form">
            <h1><label class="layui-form-label"></label>新闻添加页面</h1>
            <div class="layui-form-item">
                <label for="title" class="layui-form-label">
                    <span class="x-red">*</span>标题
                </label>
                <div class="layui-input-inline">
                    <input type="text" id="title" name="title" required="" lay-verify="required"
                    autocomplete="off" class="layui-input">
                </div>
                <div class="layui-form-mid layui-word-aux">
                    <span class="x-red">*</span>将会成为新闻的大标题
                </div>
            </div>
            <div class="layui-form-item">
                <label for="ptitle" class="layui-form-label">
                    <span class="x-red">*</span>类别
                </label>
                <div class="layui-input-inline">
                    <select name="ptitle" id="ptitle" required="" lay-verify="required" class="layui-select">
                        <option value="">请选择:</option>
                        <?php echo $str; ?>
                    </select>
                </div>
                <div class="layui-form-mid layui-word-aux">
                    <span class="x-red">*</span>将会放在你选择的类别下面,这是必选.<span class="x-red">若为空,请去类别页面添加类别</span>
                </div>
            </div>
            <div class="layui-form-item layui-inline">
                <script id="uecontainer" type="text/plain">
                    这里写你的新闻内容
                </script>
                <!-- 配置文件 -->
                <script type="text/javascript" src="/public/utf8-php/ueditor.config.js"></script>
                <!-- 编辑器源码文件 -->
                <script type="text/javascript" src="/public/utf8-php/ueditor.all.js"></script>
                <!-- 实例化编辑器 -->
                <script type="text/javascript">
                    var myue = UE.getEditor('uecontainer');
                </script>
            </div>
            <div class="layui-form-item">
                <label for="L_repass" class="layui-form-label">
                </label>
                <button  class="layui-btn" lay-filter="add" lay-submit="">
                    增加
                </button>
            </div>
        </form>
    </div>
</div>
<script>
    layui.use(['form', 'layer'],
    function() {
        $ = layui.jquery;
        var form = layui.form,
        layer = layui.layer;
        //监听提交
        form.on('submit(add)',
        function(data) {
            var txt = data.field.editorValue;
            delete(data.field.editorValue);
            data.field.content = txt;
            //发异步，把数据提交给php
            $.ajax({
                url:"<?php echo site_url('admin/news/add_save'); ?>"
                ,method:'POST'
                ,data:data.field
                ,dataType:'json'
                ,success:function(res){
                    if(res.state == 1){
                        layer.msg("添加成功",{icon:6,time:1000},function(){
                            xadmin.close();
                            xadmin.father_reload();
                        });
                    }else{
                        layer.msg(res.state,{icon:2,time:1500},function(){
                            xadmin.close();
                        });
                    }
                }
            });
            return false;
        });
    });
</script>
</body>
</html>
