<!DOCTYPE html>
<html class="x-admin-sm">
    
    <head>
        <meta charset="UTF-8">
        <title>为力-后台管理</title>
        <meta name="renderer" content="webkit">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
        <link rel="stylesheet" href="__CSS__/font.css">
        <link rel="stylesheet" href="__CSS__/xadmin.css">
        <link rel="stylesheet" href="__CSS__/jianjie.css">
        <script type="text/javascript" src="__LIB__/layui/layui.js" charset="utf-8"></script>
        <script type="text/javascript" src="__JS__/xadmin.js"></script>
        <script type="text/javascript" src="__JS__/jquery.min.js"></script>
        <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
        <!--[if lt IE 9]>
            <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
            <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <body>
        <div class="layui-fluid">
            <div class="layui-row">
            	<!-- enctype="multipart/form-data" -->
                <form class="layui-form">
                  <div class="layui-form-item">
                    <label class="layui-form-label">
                      <span class="x-red">*</span>类别
                    </label>
                    <div class="layui-input-inline">
                      <select name="type" id="type" lay-verify="leibie" class="layui-select">
                        <option value="">必选<option>
                          {volist name="data" id="vo"}
                            <option value="{$vo.id}">{$vo.title}</option>
                          {/volist}
                        <!-- ...  -->
                      </select>
                      <span class="x-red">若为空,请去类别管理下面添加</span>
                    </div>
                  </div>
                  <div class="layui-form-item">
                      <label for="title" class="layui-form-label">
                          <span class="x-red">*</span>标题
                      </label>
                      <div class="layui-input-inline">
                          <input type="text" id="title" name="title" required="" lay-verify="required" autocomplete="off" class="layui-input">
                      </div>
                  </div>
                  <div class="layui-form-item">
                      <label class="layui-form-label">
                          <span class="x-red">*</span>简介
                      </label>
                      <div class="layui-input-inline">
                          <textarea name="intro" id="intro" cols="30" rows="10" class="shuruqu" maxlength="200" οnchange="this.value=this.value.substring(0,255)" οnkeydοwn="this.value=this.value.substring(0,255)" οnkeyup="this.value=this.value.substring(0,255)" ></textarea>
                        <div class="clearfix">
                          <span class="x-red">不得超过255个字符</span>
                        </div>
                      </div>
                  </div>
                  <div class="layui-form-item">
                      <label class="layui-form-label">
                          <span class="x-red">*</span>图片+文本模式
                      </label>
                      <div class="layui-input-block">
		                  	<script id="uecontainer" name="content" type="text/plain">
		                  		
		                  	</script>
		                  	<script type="text/javascript" src="__LIB__\utf8-php\ueditor.config.js"></script>
		                  	<script type="text/javascript" src="__LIB__\utf8-php\ueditor.all.js"></script>
		                  	<script>
		                  		var myue = UE.getEditor("uecontainer",{zIndex: 100});
		                  	</script>
                      </div>
	                   <div class="layui-form-item">
	                      <label for="L_repass" class="layui-form-label">
	                      </label>
	                      <button id="add"  class="layui-btn" lay-filter="add" lay-submit="">
	                          增加
	                      </button>
	                  </div>
                  </div>
              </form>
            </div>
        </div>
        <script>
        	var allData = [];
        	layui.use(['form', 'layer','element'],
            function() {
                $ = layui.jquery;
                var form = layui.form,
                element = layui.element,
                layer = layui.layer;
                //自定义验证规则
                form.verify({
                  leibie:function(value,item){
                    if(!value){
                      layer.msg("当前类别为空,可以去类别管理添加父类");
                      return false;
                    }
                  }
                });
                //监听提交
                form.on('submit(add)',
                function(data) {
                  data.field.content = myue.getContent();
                    //发异步，把数据提交给php
                    $.ajax({
                    	url:"{:url('@admin/staff/save')}"
                    	,method:'POST'
                    	,data:data.field
                    	,dataType:'json'
                    	,success:function(res){
                    		if(res.state == 1){
                    			layer.msg("添加成功",{icon:1,time:800},function(){
	                    			xadmin.close();
			                        xadmin.father_reload();
                    			});
                    		}else{
                    			layer.msg(res.state,{icon:2,time:1200},function(){
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
      </body>

</html>
