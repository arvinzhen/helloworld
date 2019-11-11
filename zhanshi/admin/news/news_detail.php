<?php
    include("../../zhanshi.php");
    checkLogin();
    if($_GET){
        $id = $_GET['id'];
        $sql = "select * from news where id=$id"        ;
        $res = sqlquery("zhanshi",$sql,false);
        if($res){
            $name = $res['name'];
            $content = $res['content'];
        }
    }else{
        echo "<script>alert('发生未知错误');history.back();</script>";die();
    }
?>
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
              <div class="layui-block">
                  <label for="biaoti" class="layui-form-label">
                      <span class="x-red">*</span>标题
                  </label>
                  <div class="layui-input-block">
                      <input type="text" class="layui-input" value="<?php echo $name;?>" disabled>
                  </div>
                  <div class="layui-form-mid layui-word-aux">
                      <span class="x-red">*</span>资讯的主要内容
                      <div class="layui-block" style="border:1px solid red;padding:25px">
                          <?php echo $content;?>
                      </div>
                  </div>
              </div>
              <div class="layui-block">
                  <a href="/admin/index.php" class="layui-anchor">点我返回主页</a>
              </div>
        </div>
    </div>
</body>
</html>
