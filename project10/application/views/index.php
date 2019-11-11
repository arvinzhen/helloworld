<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>DedsecAdmin</title>
	<meta name="renderer" content="webkit">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta http-equiv="Access-Control-Allow-Origin" content="*">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<meta name="apple-mobile-web-app-status-bar-style" content="black">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="format-detection" content="telephone=no">
	<script type="text/javascript" src="/public/layui/layui.js"></script>
	<script type="text/javascript" src="/public/js/index.js"></script>
	<script type="text/javascript" src="/public/js/cache.js"></script>
	<link rel="icon" href="/public/images/code.png">
	<link rel="stylesheet" href="/public/layui/css/layui.css" media="all" />
	<link rel="stylesheet" href="/public/css/index.css" media="all" />
</head>
<body class="main_body">
	<div class="layui-layout layui-layout-admin">
		<!-- 顶部 -->
		<div class="layui-header header">
			<div class="layui-main mag0">
				<a href="#" class="logo">DedsecAdmin</a>
				<!-- 显示/隐藏菜单 -->
				<a href="javascript:;" class="seraph hideMenu layui-icon layui-icon-shrink-right"></a>
				<!-- 顶级菜单 -->
				<!-- <ul class="layui-nav mobileTopLevelMenus" mobile>
					<li class="layui-nav-item" data-menu="contentManagement">
						<a href="javascript:;"><i class="seraph icon-caidan"></i><cite>layuiCMS</cite></a>
						<dl class="layui-nav-child">
							<dd class="layui-this" data-menu="contentManagement"><a href="javascript:;"><i class="layui-icon" data-icon="&#xe63c;">&#xe63c;</i><cite>内容管理</cite></a></dd>
							<dd data-menu="memberCenter"><a href="javascript:;"><i class="seraph icon-icon10" data-icon="icon-icon10"></i><cite>用户中心</cite></a></dd>
							<dd data-menu="systemeSttings"><a href="javascript:;"><i class="layui-icon" data-icon="&#xe620;">&#xe620;</i><cite>系统设置</cite></a></dd>
							<dd data-menu="seraphApi"><a href="javascript:;"><i class="layui-icon" data-icon="&#xe705;">&#xe705;</i><cite>使用文档</cite></a></dd>
						</dl>
					</li>
				</ul> -->
				<!-- <ul class="layui-nav topLevelMenus" pc>
					<li class="layui-nav-item layui-this" data-menu="contentManagement">
						<a href="javascript:;"><i class="layui-icon" data-icon="&#xe63c;">&#xe63c;</i><cite>内容管理</cite></a>
					</li>
					<li class="layui-nav-item" data-menu="memberCenter" pc>
						<a href="javascript:;"><i class="seraph icon-icon10" data-icon="icon-icon10"></i><cite>用户中心</cite></a>
					</li>
					<li class="layui-nav-item" data-menu="systemeSttings" pc>
						<a href="javascript:;"><i class="layui-icon" data-icon="&#xe620;">&#xe620;</i><cite>系统设置</cite></a>
					</li>
					<li class="layui-nav-item" data-menu="seraphApi" pc>
						<a href="javascript:;"><i class="layui-icon" data-icon="&#xe705;">&#xe705;</i><cite>使用文档</cite></a>
					</li>
				</ul> -->
			    <!-- 顶部右侧菜单 -->
			    <ul class="layui-nav top_menu">
					<!-- <li class="layui-nav-item" pc>
						<a href="javascript:;" class="clearCache"><i class="layui-icon" data-icon="&#xe640;">&#xe640;</i><cite>清除缓存</cite><span class="layui-badge-dot"></span></a>
					</li>
					<li class="layui-nav-item lockcms" pc>
						<a href="javascript:;"><i class="seraph icon-lock"></i><cite>锁屏</cite></a>
					</li> -->
					<li class="layui-nav-item" id="userInfo">
						<a href="javascript:;"><img src="<?php echo '/public/images/'.$_SESSION['profilephoto'];?>" class="layui-nav-img userAvatar" width="35" height="35"><cite class="adminName"><?php echo $_SESSION['username']; ?></cite></a>
						<dl class="layui-nav-child">
							<!-- <dd><a href="javascript:;" class="showNotice"><i class="layui-icon">&#xe645;</i><cite>系统公告</cite><span class="layui-badge-dot"></span></a></dd>
							<dd pc><a href="javascript:;" class="functionSetting"><i class="layui-icon">&#xe620;</i><cite>功能设定</cite><span class="layui-badge-dot"></span></a></dd> -->
							<dd pc><a href="javascript:;" class="changeSkin"><i class="layui-icon">&#xe61b;</i><cite>更换皮肤</cite></a></dd>
							<dd><a href="<?php echo site_url("Homepage/signout") ?>" class="signOut"><i class="seraph icon-tuichu"></i><cite>退出</cite></a></dd>
						</dl>
					</li>
				</ul>
			</div>
		</div>
		<!-- 左侧导航 -->
		<div class="layui-side layui-bg-black">
			<!-- 搜索 -->
			<div class="layui-form component">
				<select name="search" id="search" lay-search lay-filter="searchPage">
					<option value="" disabled selected>请输入搜索内容</option>
					<option value="1">layer</option>
					<option value="2">form</option>
				</select>
				<i class="layui-icon">&#xe615;</i>
			</div>
			<div class="navBar layui-side-scroll" id="navBar">
				<ul class="layui-nav layui-nav-tree">
					<li class="layui-nav-item layui-this">
						<a href="javascript:;" data-url="<?php echo site_url("Homepage/mainview") ?>"><i class="layui-icon" data-icon=""></i><cite>后台首页</cite></a>
					</li>
				</ul>
			</div>
		</div>
		<!-- 右侧内容 -->
		<div class="layui-body layui-form">
			<div class="layui-tab mag0" lay-filter="bodyTab" id="top_tabs_box">
				<ul class="layui-tab-title top_tab" id="top_tabs">
					<li class="layui-this" lay-id=""><i class="layui-icon">&#xe68e;</i></li>
				</ul>
				<ul class="layui-nav closeBox">
				  <li class="layui-nav-item">
				    <a href="javascript:;"><i class="layui-icon caozuo">&#xe643;</i> 页面操作</a>
				    <dl class="layui-nav-child">
					  <dd><a href="javascript:;" class="refresh refreshThis"><i class="layui-icon layui-icon-refresh"></i> 刷新当前</a></dd>
				      <dd><a href="javascript:;" class="closePageOther"><i class="seraph icon-prohibit"></i> 关闭其他</a></dd>
				      <dd><a href="javascript:;" class="closePageAll"><i class="seraph icon-guanbi"></i> 关闭全部</a></dd>
				    </dl>
				  </li>
				</ul>
				<div class="layui-tab-content clildFrame">
					<div class="layui-tab-item layui-show">
						<iframe src="<?php echo site_url("Homepage/mainview") ?>"></iframe>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- 移动导航 -->
	<div class="site-tree-mobile"><i class="layui-icon">&#xe602;</i></div>
	<div class="site-mobile-shade"></div>
</body>
</html>