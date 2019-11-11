<!DOCTYPE html>
<html class="x-admin-sm">
<head>
    <meta charset="UTF-8">
    <title>产品修改</title>
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
        <form class="layui-form">
            <h1><label class="layui-form-label"></label>产品修改页面</h1>
            <div class="layui-form-item">
                <label for="title" class="layui-form-label">
                    <span class="x-red">*</span>标题
                </label>
                <div class="layui-input-inline">
                    <input type="text" id="title" name="title" required="" lay-verify="required"
                    autocomplete="off" class="layui-input" value="<?php echo $title; ?>">
                </div>
                <div class="layui-form-mid layui-word-aux">
                    <span class="x-red">*</span>将会成为产品的大标题
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
                    <span class="x-red">*</span>将会放在你选择的类别下面,这是必选.<span class="x-red">若为空,请去类别页面修改类别</span>
                </div>
            </div>
            <div class="layui-form-item layui-inline">
                <label for="" class="layui-form-label"></label>
                <input type="file" id="upload" accept=".gif,.jpeg,.bmp,.jpg"/>
                <button type="button" class="layui-btn" id="upload-btn">
                    <i class="layui-icon">&#xe67c;</i>上传图片
                </button>
                <div style="dispaly:inline-block;min-width:800px;min-height:400px;">
                    <img src="<?php echo $img; ?>" id="img" title='等待显示的文件' max-width="1500px" min-width="400px" max-height="800px" min-width="400px">
                </div>
            </div>
            <div class="layui-form-item">
                <label for="L_repass" class="layui-form-label">
                </label>
                <button  class="layui-btn" lay-filter="add" lay-submit="">
                    修改
                </button>
            </div>
        </form>
    </div>
</div>
<script>
    layui.use(['form', 'layer'],
    function() {
        var $ = layui.jquery;
        var form = layui.form,
        layer = layui.layer;
        //实例化文件上传
        var img = $('#img');

        //监听提交
        form.on('submit(add)',
        function(data) {
            <?php echo "var classid = '".$classid."';"; ?>
            data.field.classid = classid;
            data.field.img = document.getElementById('img').getAttribute('src');
            //发异步，把数据提交给php
            $.ajax({
                url:"<?php echo site_url('admin/product/update_save'); ?>"
                ,method:'POST'
                ,data:data.field
                ,dataType:'json'
                ,success:function(res){
                    if(res.state == 1){
                        layer.msg("修改成功",{icon:6,time:1000},function(){
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
        var btn = $("#upload-btn");
        btn.on('click',function(){
            var imageList = document.getElementById('upload').files[0];
            if(typeof(imageList) == 'undefined' || imageList.size <= 0) {
                layer.alert('请选择图片');
                return false;
            }
            var formFile = new FormData();
            formFile.append("file",imageList);
            $.ajax({
                url:'<?php echo site_url('admin/product/add_save'); ?>'
                ,data:formFile
                ,type:'POST'
                ,dataType:'json'
                ,async:false
                ,cache:false
                ,processData:false
                ,contentType:false
                ,success:function(res){
                    if(res.state == 1){
                        document.getElementById("img").setAttribute('src',res.src);
                        layer.msg('上传成功',{icon:6,time:800});
                    }else{
                        layer.msg(res.state,{icon:2,time:1200});
                    }
                }
            });
        });
    });
</script>
</body>
</html>
