<?php 
    include("../../zhanshi.php");
    if($_GET){
        $name = $_GET['name'];
        $sql = "select * from user where username='$name'";
        // ohno($sql);
        $res = sqlquery("zhanshi", $sql, false);
        if($res){
            $id = $res['id'];
            $username = $res['username'];
            $realname = $res['realname'];
            $regtime = date("Y-m-d H:i:s",$res['regtime']);
        }else{
            echo "<script>alert('你违法了');history.back();</script>";
            die();
        }
    }else{
        echo "<script>alert('你违法了');history.back();</script>";
        die();
    }
 ?>
 
<!DOCTYPE html>
<html class="x-admin-sm">
<head>
    <meta charset="UTF-8">
    <title>用户添加</title>
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
    	.layui-word-aux{color:black !important;}
    </style>
    <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
    <!--[if lt IE 9]>
        <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
        <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body class="login-bg">
    <div class="layui-fluid">
        <div class="layui-row">
            <div class="layui-form-item">
                <label for="L_id" class="layui-form-label">
                    <span class="x-red">*</span>ID:</label>
                <div class="layui-input-inline">
                    <input type="text" class="layui-input" value='<?php echo $id; ?>' disabled></div>
            <div class="layui-form-item">
                <label for="L_username" class="layui-form-label">
                    <span class="x-red">*</span>用户名</label>
                <div class="layui-input-inline">
                    <input type="text" class="layui-input" value='<?php echo $username; ?>' disabled></div>
            </div>
            <div class="layui-form-item">
                <label for="L_realname" class="layui-form-label">
                    <span class="x-red">*</span>真名</label>
                <div class="layui-input-inline">
                    <input type="text" class="layui-input" value="<?php echo $realname; ?>" disabled></div>
            </div>
            <div class="layui-form-item">
                <label for="L_regtime" class="layui-form-label">
                    <span class="x-red">*</span>注册时间</label>
                <div class="layui-input-inline">
                    <input type="text" class="layui-input" value="<?php echo $regtime; ?>" disabled></div>
            </div>
        </div>
    </div>
</body>
</html>