<!DOCTYPE html>
<html class="x-admin-sm">
<head>
    <meta charset="UTF-8">
    <title>个人信息</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <link rel="stylesheet" href="/public/css/font.css">
    <link rel="stylesheet" href="/public/css/xadmin.css">
    <script type="text/javascript" src="/public/layui/layui.js" charset="utf-8"></script>
    <!-- <script type="text/javascript" src="/public/lib/layui/layui.js" charset="utf-8"></script> -->
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
            <h1><label class="layui-form-label"></label>留言具体信息</h1>
            <div class="layui-form-item">
                <label for="" class="layui-form-label">
                    <span class="x-red">*</span>用户名
                </label>
                <div class="layui-input-inline">
                    <input type="text" class="layui-input" disabled value='<?php echo $name; ?>'>
                </div>
            </div>
            <div class="layui-form-item">
                <label for="" class="layui-form-label">
                    <span class="x-red">*</span>电话
                </label>
                <div class="layui-input-inline">
                    <input type="text" class="layui-input" disabled value='<?php echo $tel; ?>'>
                </div>
            </div>
            <div class="layui-form-item">
                <label for="" class="layui-form-label">
                    <span class="x-red">*</span>发布时间
                </label>
                <div class="layui-input-inline">
                    <input type="text" class="layui-input" disabled value='<?php echo $regtime; ?>'>
                </div>
            </div>
            <div class="layui-form-item">
                <label for="" class="layui-form-label">
                    <span class="x-red">*</span>具体内容
                </label>
                <div class="layui-input-inline">
                    <?php echo $content; ?>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
