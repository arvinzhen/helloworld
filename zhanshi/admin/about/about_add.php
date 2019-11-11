<?php 
	include("../../zhanshi.php");
  checkLogin();
 ?>
<!DOCTYPE html>
<html class="x-admin-sm">
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
    	/*.layui-form-item .layui-input-inline{width: 50%;}*/
    	#edui1_iframeholder{height:400px;}
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
                      autocomplete="off" class="layui-input">
                  </div>
                  <button  class="layui-btn">
                      增加
                  </button>
                  <div class="layui-form-mid layui-word-aux">
                      <span class="x-red">*</span>这将成为关于公司的小标题
                  </div>
              </div>
              	<?php echo addUE(); ?>
          </form>
        </div>
    </div>
</body>
<script>
	window.UEDITOR_HOME_URL = "/utf8-php";
	var myue = UE.getEditor('uecontainer', {
		toolbars: [[
            'fullscreen', 'source', '|', 'undo', 'redo', '|',
            'bold', 'italic', 'underline', 'fontborder', 'strikethrough', 'superscript', 'subscript', 'removeformat', 'formatmatch', 'autotypeset', 'blockquote', 'pasteplain', '|', 'forecolor', 'backcolor', 'insertorderedlist', 'insertunorderedlist', 'selectall', 'cleardoc', '|',
            'rowspacingtop', 'rowspacingbottom', 'lineheight', '|',
            'customstyle', 'paragraph', 'fontfamily', 'fontsize', '|',
            'directionalityltr', 'directionalityrtl', 'indent', '|',
            'justifyleft', 'justifycenter', 'justifyright', 'justifyjustify', '|', 'touppercase', 'tolowercase', '|',
            'link', 'unlink', 'anchor', '|', 'imagenone', 'imageleft', 'imageright', 'imagecenter', '|',
            'simpleupload', 'insertimage', 'emotion', 'scrawl', 'insertvideo', 'music', 'attachment', 'map', 'gmap', 'insertframe', 'insertcode', 'webapp', 'pagebreak', 'template', 'background', '|',
            'horizontal', 'date', 'time', 'spechars', 'snapscreen', 'wordimage', '|',
            'inserttable', 'deletetable', 'insertparagraphbeforetable', 'insertrow', 'deleterow', 'insertcol', 'deletecol', 'mergecells', 'mergeright', 'mergedown', 'splittocells', 'splittorows', 'splittocols', 'charts', '|',
            'print', 'preview', 'searchreplace', 'drafts', 'help'
        ]],
		autoHeightEnabled:true,
		autoFloatEnabled:true
	});
	var btn = $('button.layui-btn');
	btn.on('click', function(){
		var title = $('#biaoti').val();
		var html = myue.getContent();
    // console.log(html);
		$.ajax({
			url:'/admin/about/about_add_save.php',
			method:'POST',
			data:{'title':title, 'html':html},
			dataType:'json',
			success:function(res){
				layer.msg(res.state,{time:1500},function(){
          xadmin.close();
          xadmin.father_reload();
        });
			}
		});
		return false;
	});
</script>
</html>
