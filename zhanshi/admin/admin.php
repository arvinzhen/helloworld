<?php 
    include("../zhanshi.php");
    checkLogin();
    $name = $_SESSION['username'];
  ?>
<!DOCTYPE html>
<html class="x-admin-sm">
<head>
    <meta charset="UTF-8">
    <title>后台登录-admin</title>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="stylesheet" href="/css/font.css">
    <link rel="stylesheet" href="/css/xadmin.css">
    <link rel="stylesheet" href="/css/theme2.css">
    <script src='/jQuery/jquery-3.4.1.js' type='text/javascript'></script>
    <script src='/layui/layer/layer.js' type='text/javascript'></script>
    <script src="/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="/js/xadmin.js"></script>
    <style>
        img.huixian{max-width:100px;max-height:100px;}
    </style>
    <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
    <!--[if lt IE 9]>
      <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
      <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body class="index">
    <!-- 顶部开始 -->
    <div class="container">
        <div class="logo">
            <a href="./admin.php">战石-admin</a></div>
        <div class="left_open">
            <a><i title="展开左侧栏" class="iconfont">&#xe699;</i></a>
        </div>
        <ul class="layui-nav left fast-add" lay-filter="">
            <li class="layui-nav-item">
                <a href="javascript:;">+新增</a>
                <dl class="layui-nav-child">
                    <!-- 二级菜单 -->
                    <dd>
                        <a onclick="xadmin.open('最大化','/admin/admin.php','','',true)">
                            <i class="iconfont">&#xe6a2;</i>弹出最大化</a></dd>
                    <dd>
                        <a onclick="xadmin.open('弹出自动宽高','http://www.baidu.com')">
                            <i class="iconfont">&#xe6a8;</i>弹出自动宽高</a></dd>
                    <dd>
                        <a onclick="xadmin.open('弹出指定宽高','/admin/login/welcome.php',500,300)">
                            <i class="iconfont">&#xe6a8;</i>弹出指定宽高</a></dd>
                    <dd>
                        <a onclick="xadmin.add_tab('在tab打开','member-list.html')">
                            <i class="iconfont">&#xe6b8;</i>在tab打开</a></dd>
                    <dd>
                        <a onclick="xadmin.add_tab('在tab打开刷新','member-del.html',true)">
                            <i class="iconfont">&#xe6b8;</i>在tab打开刷新</a></dd>
                </dl>
            </li>
        </ul>
        <ul class="layui-nav right" lay-filter="">
            <li class="layui-nav-item">
                <a href="javascript:;"><?php echo $name; ?></a>
                <dl class="layui-nav-child">
                    <!-- 二级菜单 -->
                    <dd>
                        <a onclick="xadmin.open('个人信息','/admin/users/user_detail.php?name=<?php echo $name; ?>',600,400)">个人信息</a></dd>
                    <dd>
                        <a onclick="xadmin.open('切换帐号','/admin/login/login_index.php?quit=0')">切换帐号</a></dd>
                    <dd>
                        <a href="/admin/login/login_index.php?quit=1">退出</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item to-index">
                <a href="/admin/index.php">前台首页</a></li>
        </ul>
    </div>
    <!-- 顶部结束 -->
    <!-- 中部开始 -->
    <!-- 左侧菜单开始 -->
    <div class="left-nav">
        <div id="side-nav">
            <ul id="nav">
                <li>
                    <a href="javascript:;">
                        <i class="iconfont left-nav-li" laytips="类别总览">&#xe6ae;</i>
                        <cite>类别总览</cite>
                        <i class="iconfont nav_right">&#xe697;</i>
                    </a>
                    <ul class="sub-menu">
                        <li>
                            <a onclick="xadmin.add_tab('类别表', '/admin/classes/index.php')">
                                <i class="iconfont">&#xe6a7;</i>
                                <cite>类别管理</cite>
                            </a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="javascript:;">
                        <i class="iconfont left-nav-li" lay-tips="user管理">&#xe6b8;</i>
                        <cite>user管理</cite>
                        <i class="iconfont nav_right">&#xe697;</i></a>
                    <ul class="sub-menu">
                        <li>
                            <a onclick="xadmin.add_tab('统计页面','./users/user_index.php')">
                                <i class="iconfont">&#xe6a7;</i>
                                <cite>统计页面</cite></a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="javascript:;">
                        <i class="iconfont left-nav-li" lay-tips="关于我们">&#xe723;</i>
                        <cite>关于我们</cite>
                        <i class="iconfont nav_right">&#xe697;</i></a>
                    <ul class="sub-menu">
                        <li>
                            <a onclick="xadmin.add_tab('管理小标题','/admin/about/about_index.php')">
                                <i class="iconfont">&#xe6a7;</i>
                                <cite>总览页面</cite></a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="javascript:;">
                        <i class="iconfont left-nav-li" lay-tips="案例A管理">&#xe723;</i>
                        <cite>案例中心</cite>
                        <i class="iconfont nav_right">&#xe697;</i></a>
                    <ul class="sub-menu">
                        <li>
                            <a onclick="xadmin.add_tab('案例中心','/admin/aworks/work_index.php')">
                                <i class="iconfont">&#xe6a7;</i>
                                <cite>页面总览</cite></a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="javascript:;">
                        <i class="iconfont left-nav-li" lay-tips="案例B管理">&#xe723;</i>
                        <cite>解决方案</cite>
                        <i class="iconfont nav_right">&#xe697;</i></a>
                    <ul class="sub-menu">
                        <li>
                            <a onclick="xadmin.add_tab('解决方案','/admin/bworks/work_index.php')">
                                <i class="iconfont">&#xe6a7;</i>
                                <cite>页面总览</cite>
                        </a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="javascript:;">
                        <i class="iconfont left-nav-li" lay-tips="产品中心">&#xe722;</i>
                        <cite>产品中心</cite>
                        <i class="iconfont nav_right">&#xe697;</i></a>
                    <ul class="sub-menu">
                        <li>
                            <a onclick="xadmin.add_tab('产品中心', '/admin/product/product_index.php')">
                                <i class="iconfont">&#xe6a7;</i>
                                <cite>页面总览</cite>
                            </a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="javascript:;">
                        <i class="iconfont left-nav-li" lay-tips="资讯中心">&#xe756;</i>
                        <cite>资讯中心</cite>
                        <i class="iconfont nav_right">&#xe697;</i>
                    </a>
                    <ul class="sub-menu">
                        <li>
                            <a onclick="xadmin.add_tab('资讯分类','/admin/news/classes/index.php')">
                                <i class="iconfont">&#xe6a7;</i>
                                <cite>新闻分类</cite>
                            </a>
                        </li>
                        <li><a onclick="xadmin.add_tab('资讯中心', '/admin/news/news_index.php')">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>潮流一览</cite>
                        </a></li>
                    </ul>
                </li>
                <li>
                    <a href="javascript:;">
                        <i class="iconfont left-nav-li" laytips="用户留言">&#xe69b;</i>
                        <cite>用户留言</cite>
                        <i class="iconfont nav_right">&#xe697;</i>
                    </a>
                    <ul class="sub-menu">
                        <li>
                            <a onclick="xadmin.add_tab('留言', '/admin/message/message_index.php')">
                                <i class="iconfont">&#xe6a7;</i>
                                <cite>留言表</cite>
                            </a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="javascript:;">
                        <i class="iconfont left-nav-li" lay-tips="主页设置">&#xe6ae;</i>
                        <cite>sys设置</cite>
                        <i class="iconfont nav_right">&#xe697;</i>
                    </a>
                    <ul class="sub-menu">
                        <li>
                            <a onclick="xadmin.add_tab('sysSet', '/admin/sysset/sysset_index.php')">
                                <i class="iconfont">&#xe6a7;</i>
                                <cite>主要设置</cite>
                            </a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="javascript:;">
                        <i class="iconfont left-nav-li" lay-tips="系统统计">&#xe6ce;</i>
                        <cite>系统统计</cite>
                        <i class="iconfont nav_right">&#xe697;</i></a>
                    <ul class="sub-menu">
                        <li>
                            <a onclick="xadmin.add_tab('拆线图','echarts1.html')">
                                <i class="iconfont">&#xe6a7;</i>
                                <cite>拆线图</cite></a>
                        </li>
                        <li>
                            <a onclick="xadmin.add_tab('拆线图','echarts2.html')">
                                <i class="iconfont">&#xe6a7;</i>
                                <cite>拆线图</cite></a>
                        </li>
                        <li>
                            <a onclick="xadmin.add_tab('地图','echarts3.html')">
                                <i class="iconfont">&#xe6a7;</i>
                                <cite>地图</cite></a>
                        </li>
                        <li>
                            <a onclick="xadmin.add_tab('饼图','echarts4.html')">
                                <i class="iconfont">&#xe6a7;</i>
                                <cite>饼图</cite></a>
                        </li>
                        <li>
                            <a onclick="xadmin.add_tab('雷达图','echarts5.html')">
                                <i class="iconfont">&#xe6a7;</i>
                                <cite>雷达图</cite></a>
                        </li>
                        <li>
                            <a onclick="xadmin.add_tab('k线图','echarts6.html')">
                                <i class="iconfont">&#xe6a7;</i>
                                <cite>k线图</cite></a>
                        </li>
                        <li>
                            <a onclick="xadmin.add_tab('热力图','echarts7.html')">
                                <i class="iconfont">&#xe6a7;</i>
                                <cite>热力图</cite></a>
                        </li>
                        <li>
                            <a onclick="xadmin.add_tab('仪表图','echarts8.html')">
                                <i class="iconfont">&#xe6a7;</i>
                                <cite>仪表图</cite></a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="javascript:;">
                        <i class="iconfont left-nav-li" lay-tips="图标字体">&#xe6b4;</i>
                        <cite>图标字体</cite>
                        <i class="iconfont nav_right">&#xe697;</i></a>
                    <ul class="sub-menu">
                        <li>
                            <a onclick="xadmin.add_tab('图标对应字体','unicode.html')">
                                <i class="iconfont">&#xe6a7;</i>
                                <cite>图标对应字体</cite></a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="javascript:;">
                        <i class="iconfont left-nav-li" lay-tips="其它页面">&#xe6b4;</i>
                        <cite>其它页面</cite>
                        <i class="iconfont nav_right">&#xe697;</i></a>
                    <ul class="sub-menu">
                        <li>
                            <a href="/admin/login/login_index.php">
                                <i class="iconfont">&#xe6a7;</i>
                                <cite>退出登录</cite></a>
                        </li>
                        <li>
                            <a onclick="xadmin.add_tab('错误页面','error.html')">
                                <i class="iconfont">&#xe6a7;</i>
                                <cite>错误页面</cite></a>
                        </li>
                        <li>
                            <a onclick="xadmin.add_tab('示例页面','demo.html')">
                                <i class="iconfont">&#xe6a7;</i>
                                <cite>示例页面</cite></a>
                        </li>
                        <li>
                            <a onclick="xadmin.add_tab('更新日志','log.html')">
                                <i class="iconfont">&#xe6a7;</i>
                                <cite>更新日志</cite></a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="javascript:;">
                        <i class="iconfont left-nav-li" lay-tips="第三方组件">&#xe6b4;</i>
                        <cite>layui第三方组件</cite>
                        <i class="iconfont nav_right">&#xe697;</i></a>
                    <ul class="sub-menu">
                        <li>
                            <a onclick="xadmin.add_tab('滑块验证','https://fly.layui.com/extend/sliderVerify/')" target="">
                                <i class="iconfont">&#xe6a7;</i>
                                <cite>滑块验证</cite></a>
                        </li>
                        <li>
                            <a onclick="xadmin.add_tab('富文本编辑器','https://fly.layui.com/extend/layedit/')">
                                <i class="iconfont">&#xe6a7;</i>
                                <cite>富文本编辑器</cite></a>
                        </li>
                        <li>
                            <a onclick="xadmin.add_tab('eleTree 树组件','https://fly.layui.com/extend/eleTree/')">
                                <i class="iconfont">&#xe6a7;</i>
                                <cite>eleTree 树组件</cite></a>
                        </li>
                        <li>
                            <a onclick="xadmin.add_tab('图片截取','https://fly.layui.com/extend/croppers/')">
                                <i class="iconfont">&#xe6a7;</i>
                                <cite>图片截取</cite></a>
                        </li>
                        <li>
                            <a onclick="xadmin.add_tab('formSelects 4.x 多选框','https://fly.layui.com/extend/formSelects/')">
                                <i class="iconfont">&#xe6a7;</i>
                                <cite>formSelects 4.x 多选框</cite></a>
                        </li>
                        <li>
                            <a onclick="xadmin.add_tab('Magnifier 放大镜','https://fly.layui.com/extend/Magnifier/')">
                                <i class="iconfont">&#xe6a7;</i>
                                <cite>Magnifier 放大镜</cite></a>
                        </li>
                        <li>
                            <a onclick="xadmin.add_tab('notice 通知控件','https://fly.layui.com/extend/notice/')">
                                <i class="iconfont">&#xe6a7;</i>
                                <cite>notice 通知控件</cite></a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
    <!-- <div class="x-slide_left"></div> -->
    <!-- 左侧菜单结束 -->
    <!-- 右侧主体开始 -->
    <div class="page-content">
        <div class="layui-tab tab" lay-filter="xbs_tab" lay-allowclose="false">
            <ul class="layui-tab-title">
                <li class="home">
                    <i class="layui-icon">&#xe68e;</i>我的桌面</li></ul>
            <div class="layui-unselect layui-form-select layui-form-selected" id="tab_right">
                <dl>
                    <dd data-type="this">关闭当前</dd>
                    <dd data-type="other">关闭其它</dd>
                    <dd data-type="all">关闭全部</dd></dl>
            </div>
            <div class="layui-tab-content">
                <div class="layui-tab-item layui-show">
                    <iframe src='/admin/login/welcome.php' frameborder="0" scrolling="yes" class="x-iframe"></iframe>
                </div>
            </div>
            <div id="tab_show"></div>
        </div>
    </div>
    <div class="page-content-bg"></div>
    <style id="theme_style"></style>
    <!-- 右侧主体结束 -->
    <!-- 中部结束 -->
</body>
<script>
    // 是否开启刷新记忆tab功能
    // var is_remember = false;
         <?php echo "var hello = '".$name."';"; ?>
         layer.msg("欢迎你  "+hello,{time:800});
</script>

</html>