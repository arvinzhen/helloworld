<!DOCTYPE html>
<html class="x-admin">
<head>
	<meta charset="UTF-8">
	<title>求职招聘-南昌为力人力资源服务有限公司</title>
	<link rel="stylesheet" href="__CSS__/xadmin.css">
	<link rel="stylesheet" href="__CSS__/sz.css">
	<link rel="stylesheet" href="__CSS__/initia.css">
	<link rel="stylesheet" href="/static/swiper-4.5.0/dist/css/swiper.min.css">
	<script type="text/javascript" src="__JS__/jquery.min.js"></script>
	<script type="text/javascript" src="/static/swiper-4.5.0/dist/js/swiper.min.js"></script>
</head>
<body>
<!-- 头部 -->
<div class="sz-top">
	{include file="common/top"}
</div>
<!-- banner -->
<div class="banner">
	<img src="__IMAGE__/banner3.jpg">
</div>
<div class="news-nav text-center">
	<h1>求职招聘</h1>
	<img src="__IMAGE__/jian.png">
	<p>提供最有价值的人力资源服务和解决方案，持续为客户创造最大价值</p>
	{$datamid|raw}
</div>
<div class="content1">
	{$newscontent|raw}
</div>
<!-- 底部 -->
<div class="bottom">
	{include file="common/bottom"}
</div>
</body>
</html>