<!DOCTYPE html>
<html class="x-admin-sm">
<head>
    <meta charset="UTF-8">
    <title>欢迎页面-X-admin2.2</title>
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
<div class="layui-fluid">
    <div class="layui-row">
        <form class="layui-form">
          <div class="layui-form-item">
              <label for="ptitle" class="layui-form-label">
              </label>
              <div class="layui-input-inline">
              	<select name="ptitle" id="ptitle" class="layui-select">
                      <option value="">添加顶级title</option>
              		<?php echo $str; ?>
              	</select>
              </div>
              <div class="layui-form-mid layui-word-aux">
                  <span class="x-red">*</span>将会成为该标题的子标题
              </div>
          </div>
          <div class="layui-form-item">
              <label class="layui-form-label"></label>
              <div class="layui-input-inline">
              	<input type="text" name="title" class="layui-input" required="" lay-verify="required" autocomplete="off">
              </div>
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
layui.use(['form', 'layer','jquery'],
    function() {
        var $ = layui.jquery;
        var form = layui.form,
        layer = layui.layer;

        //监听提交
        form.on('submit(add)',function(data) {
            //发异步，把数据提交给php
            $.ajax({
            	url:"<?php echo site_url('admin/classes/addsave'); ?>"
                ,method:'POST'
                ,data:data.field
                ,dataType:'json'
                ,success:function(res){
                    if(res.state == 1){
                        layer.msg('添加成功',{icon:6,time:800},function(){
                            xadmin.father_reload();
                        });
                    }else{
                        layer.msg(res.state,{icon:1,time:1200});
                    }
                }
            });
            return false;
        });

});
</script>
</body>

</html>
