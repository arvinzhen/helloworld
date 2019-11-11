<!DOCTYPE html>
<html class="x-admin">
<head>
    <meta charset="UTF-8">
    <title>关于我们-南昌为力人力资源服务有限公司</title>
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
    <img src="__IMAGE__/banner2.jpg">
</div>
<div class="news-nav text-center">
    <h1>关于我们</h1>
    <img src="__IMAGE__/jian.png">
    <p>坚持开源，不断创新</p>
    {$datamid|raw}
</div>
<div class="content">
    {$newscontent|raw}
</div>
<!-- 底部 -->
<div class="bottom">
    {include file="common/bottom"}
</div>
</body>
</html>