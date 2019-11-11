<?php 
	include("../../zhanshi.php");
	checkLogin();
	if($_GET){
		$id = $_GET['id'];
		$sql = "select * from about where id=$id";
		$res = sqlquery("zhanshi",$sql,false);
		$title = $res['name'];
		$content = $res['content'];
	}else{
		echo json_encode(['state' => '非法进入']);die();
	}
 ?>
 <!DOCTYPE html>
 <html lang="en">
 <head>
    <meta charset="UTF-8">
    <title>管理页面</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <link rel="stylesheet" href="/css/font.css">
    <link rel="stylesheet" href="/css/xadmin.css">
    <script type="text/javascript" src="/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="/js/xadmin.js"></script>
    <script src='/jQuery/jquery-3.4.1.js' type='text/javascript'></script>
    <script src='/layui/layer/layer.js' type='text/javascript'></script>
    <style>
    	.layui-form-item .layui-input-inline{width: 50%;}
    	#edui1{max-width: 1920px;min-width: 1280px;}
    </style>
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
                  <label for="biaoti" class="layui-form-label">
                      <span class="x-red">*</span>标题
                  </label>
                  <div class="layui-input-inline">
                      <input type="text" id="biaoti" name="biaoti" required="" 
                      autocomplete="off" class="layui-input" value="<?php echo $title; ?>">
                  </div>
              <button  class="layui-btn">
                  保存修改
              </button>
              </div>
          </form>
        </div>
    </div>

 	<script id='uecontainer'> <?php echo $content; ?> </script>
 	<script src='/utf8-php/ueditor.config.js'></script>
 	<script src='/utf8-php/ueditor.all.js'></script>
 </body>
 <script>
 	<?php echo "var test = '/admin/about/about_edit_save.php?id=$id';"; ?>
 	console.log(test);
 	var myue = UE.getEditor('uecontainer');
 	var btn = $("button.layui-btn");
 	btn.on('click',function(){
 		var html = myue.getContent();
 		var title = $("#biaoti").val();
 		$.ajax({
 			url:test,
 			method:'POST',
 			data:{'title':title,'html':html},
 			dataType:'json',
 			success:function(res){
 				if(res.state == 1){
 					layer.msg('修改成功',{icon:6,time:500});
 				}else{
 					layer.msg(res.state,{icon:2,time:1500});
 				}
 			}
 		});
    xadmin.close();
    xadmin.father_reload();
 		return false;
 	});
 </script>
 </html>