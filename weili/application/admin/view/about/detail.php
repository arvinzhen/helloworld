<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <link rel="stylesheet" href="__CSS__/font.css">
    <link rel="stylesheet" href="__CSS__/xadmin.css">
    <link rel="stylesheet" href="__CSS__/test.css">
    <script src="__LIB__/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="__JS__/xadmin.js"></script>
    <!--[if lt IE 9]>
      <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
      <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <div class="x-nav">
      <span class="layui-breadcrumb">
        <a href="{:url('@admin/index/index')}" target="partent">首页</a>
        <a href="">{$title}</a>
        <a>
          <cite>详情</cite></a>
      </span>
      <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" onclick="location.reload()" title="刷新">
        <i class="layui-icon layui-icon-refresh" style="line-height:30px"></i></a>
    </div>
    <div class="layui-fluid">
    	<h1 class="text-center">{$title}</h1>
    	<h3 class="text-center">以下是当前标题的图集</h3>
    	<p class="text-center x-red">单击放大缩小</p>
    	<ul class="gezi">
	    	{volist name="data" id="huala"}
	    		<li><div class="layui-inline"><?php echo $huala['content']; ?></div>
            {neq name="$huala['imglist']" value=""}<img src="__UPLOAD__/{$title}/{$huala.imglist}" class="xy min">
            {/neq}<br/><p>发布时间:<span>{$huala.releasetime}</span></p></li>
	    	{/volist}
    	</ul>
	</div>
</body>
	<script>
		layui.use(['jquery'],function(){
			$ = layui.jquery;
			$("img").click(function(){
				$(this).removeClass("xy");
				$(this).toggleClass("max");
				$(this).parents("ul.gezi").find("img.xy").removeClass("max").addClass("min");
				$(this).addClass("xy");
			});
		});
	</script>
</html>