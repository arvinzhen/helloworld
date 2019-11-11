<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="/public/layui/css/layui.css">
    <link rel="stylesheet" href="/public/css/global.css">
    <script src="/public/layui/layui.js"></script>
    <script src="/public/JQuery/jquery-3.4.1.js"></script>
    <title>在线留言</title>
</head>
<body>
    <div id="top" class="layui-main">
        <div id="logo" class="layui-inline"><img src="/public/images/logo.png" alt="盐城盛光"></div>
        <form id="search" class="layui-form layui-inline" action="<?php echo base_url('product'); ?>" method="GET">
            <input type="text" placeholder="请输入搜索关键字" lay-verify="required">
            <img src="/public/images/sou.png" lay-submit>
        </form>
        <div id="tel" class="layui-inline"><img src="/public/images/tel.png" alt="联系电话"> 18912532338</div>
    </div>
    <div id="nav">
        <div class="layui-main">
            <a href="http://hj.com" class="nav-on nav-off">网站首页</a>
            <a href="">网站首页</a>
            <a href="">网站首页</a>
            <a href="">网站首页</a>
            <a href="">网站首页</a>
            <a href="">网站首页</a>
            <a href="">网站首页</a>
        </div>
        <div class="banner">

        </div>
    </div>
    <div id="banner">

    </div>
    <div id="footer">
        <div class="layui-main bottom">
            <div class="layui-inline">
                <ul class="foot-1">
                    <li><a href="">网站首页</a></li>
                    <li><a href="">关于我们</a></li>
                    <li><a href="">新闻中心</a></li>
                    <li><a href="">产品中心</a></li>
                    <li><a href="">加工工艺</a></li>
                    <li><a href="">在线留言</a></li>
                    <li><a href="">联系我们</a></li>
                </ul>
                <br/>
                <ul class="foot-2">
                    <li>联系方式：18912532338</li>
                    <li>公司网址：http://www.sghjx.com</li>
                    <li>联 系 人：周先生</li>
                    <li>邮　　箱：service@sghjx.com</li>
                    <li>备 案 号：苏ICP备18029748号</li>
                    <li>公司地址：江苏省盐城市建湖县开发区光明路9号</li>
                </ul>
                <br/>
                <li>技术支持：<a href="">南昌雅腾信息科技有限公司</a></li>
            </div>
            <div class="layui-inline">
                <img src="/public/images/map.jpg">
                <div><img src="/public/images/qchart.jpg" alt="关注我们"></div>
            </div>
        </div>
    </div>
    <script>
        layui.use(['form'],function(){
            var form = layui.form;
        });
        var form = $('#search');
        $('#search>img').click(function(){
            if($('#search>input').val()){
                form.submit();
            }
        });
    </script>
    <script>
        $('#nav a').hover(function(){
            $(this).addClass('nav-on');
        },function(){
            $(this).removeClass('nav-on');
        });
    </script>
</body>
</html>