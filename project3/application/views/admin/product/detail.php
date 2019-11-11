<!DOCTYPE html>
<html class="x-admin-sm">
<head>
    <meta charset="UTF-8">
    <title>产品详情</title>
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
            <h1><label class="layui-form-label"></label>产品详情页面</h1>
            <div class="layui-form-item">
                <label for="title" class="layui-form-label">
                    <span class="x-red">*</span>标题
                </label>
                <div class="layui-input-inline">
                    <input type="text" class="layui-input" disabled value='<?php echo $title; ?>'>
                </div>
            </div>
            <div class="layui-form-item">
                <label for="ptitle" class="layui-form-label">
                    <span class="x-red">*</span>类别
                </label>
                <div class="layui-input-inline">
                    <select name="ptitle" id="ptitle" required="" lay-verify="required" class="layui-select">
                        <option><?php echo $type; ?></option>
                    </select>
                </div>
            </div>
            <div class="layui-form-item layui-inline">
                <div style="dispaly:inline-block;min-width:1000px;min-height:600px;">
                    <img src="<?php echo $img; ?>" id="img" title='等待显示的文件' max-width="1500px" min-width="400px" max-height="800px" min-width="400px">
                </div>
            </div>
            <div class="layui-form-item">
                <label for="L_repass" class="layui-form-label">
                </label>
                <a href="<?php echo base_url('admin/product'); ?>" target="_top">返回管理页面</a>
            </div>
        </div>
    </div>
</div>
</body>
</html>
