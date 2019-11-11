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
        <div>
            <h1><label class="layui-form-label"></label>新闻详情页面</h1>
            <div class="layui-form-item">
                <label for="title" class="layui-form-label">
                    <span class="x-red">*</span>标题
                </label>
                <div class="layui-input-inline">
                    <input type="text" class="layui-input" value="<?php echo $title; ?>" disabled>
                </div>
            </div>
            <div class="layui-form-item">
                <label for="ptitle" class="layui-form-label">
                    <span class="x-red">*</span>类别
                </label>
                <div class="layui-input-inline">
                    <input type="text" class="layui-input" value="<?php echo $type; ?>" disabled>
                </div>
            </div>
            <div class="layui-form-item">
                <label for="ptitle" class="layui-form-label">
                    <span class="x-red">*</span>发布时间
                </label>
                <div class="layui-input-inline">
                    <input type="text" class="layui-input" value="<?php echo $releasetime; ?>" disabled>
                </div>
            </div>
            <div class="layui-form-item">
                <label for="ptitle" class="layui-form-label">
                    <span class="x-red">*</span>浏览量
                </label>
                <div class="layui-input-inline">
                    <input type="text" class="layui-input" value="<?php echo $pageviews; ?>" disabled>
                </div>
            </div>
            <div class="layui-form-item layui-inline">
                <label for="" class="layui-form-label">
                    <span class="x-red">*</span>主体内容
                </label>
                <div class="layui-inline" style="border:1px solid blue;max-width:1000px;min-width:400px;min-height:400px;">
                    <?php echo $content; ?>
                </div>
            </div>
            <div>
                <label class="layui-form-label">
                </label>
                <a href="<?php echo site_url('admin/news'); ?>" style="color:red;" target="_top">返回管理页面</a>
            </div>
        </div>
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
            // console.log(data.field);return false;
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
