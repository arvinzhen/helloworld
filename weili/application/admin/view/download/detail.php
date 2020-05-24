<!DOCTYPE html>
<html class="x-admin-sm">
<head>
	<meta charset="UTF-8">
	<title>文件详情</title>
	<meta name="renderer" content="webkit|ie-comp|ie-stand">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
	<meta http-equiv="Cache-Control" content="no-siteapp" />
	<link rel="stylesheet" href="__CSS__/font.css">
	<link rel="stylesheet" href="__CSS__/test.css">
	<link rel="stylesheet" href="__CSS__/xadmin.css">
	<!-- <link rel="stylesheet" href="__CSS__/theme2.css"> -->
    <script src="__LIB__/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="__JS__/xadmin.js"></script>
    <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
    <!--[if lt IE 9]>
      <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
      <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
	<div class="layui-fluid">
		<div class="layui-row">
			<div class="layui-col-md12">
				<div class="layui-card">
					<div class="layui-card-body">
						<h1 class="text-center">文件标题:<span class="x-red">{$data.title}</span></h1>
						<h3 class="text-center">文件路径:<span class="x-red">{$data.path}</span></h1>
						<h6 class="text-center">发布时间:<span class="x-red">{$data.path}</span></h1>
					</div>
					<div class="layui-card-body">
						<a href="__UPLOAD__/file/{$data.path}" style="border:4px solid black;">打开文件</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>