<!DOCTYPE html>
<html class="x-admin-sm">
<head>
    <meta charset="UTF-8">
    <title>类别总览和管理</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <link rel="stylesheet" href="/public/css/font.css">
    <link rel="stylesheet" href="/public/css/xadmin.css">
    <script type="text/javascript" src="/public/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="/public/js/xadmin.js"></script>
    <style>td a{float: left;width: 30%;height:100%;padding:0;cursor:pointer;}</style>
    <!--[if lt IE 9]>
        <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
        <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<div class="x-nav">
    <span class="layui-breadcrumb">
    <a href="<?php echo site_url('admin/main'); ?>">首页</a>
    <a href="<?php echo site_url('admin/classes'); ?>">类别</a>
    <a>
        <cite>类别总览</cite></a>
    </span>
    <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" onclick="location.reload()" title="刷新">
    <i class="layui-icon layui-icon-refresh" style="line-height:30px"></i></a>
</div>
<div class="layui-fluid">
    <div class="layui-row layui-col-space15">
        <div class="layui-col-md6">
            <div class="layui-card">
                <div class="layui-card-body ">
                    <h1 class="text-center">总览</h1>
                    <table id="t1" class="layui-table layui-form">
                        <thead>
                            <tr>
                                <th>标题</th>
                                <th colspan="3">操作</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php echo $strLT; ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div class="layui-col-md6">
            <div class="layui-card">
                <div class="layui-card-header">
                    <button class="layui-btn" onclick="xadmin.open('添加用户','<?php echo site_url('admin/classes/add'); ?>','','')"><i class="layui-icon"></i>添加</button>
                </div>
                <div class="layui-card-header">
                    <h1 class="text-center">类别管理</h1>
                </div>
                <div class="layui-card-body">
                    <table id="t2" class="layui-table layui-form">
                    <thead>
                            <tr>
                                <th>标题</th>
                                <th colspan="3">操作</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php echo $strRT;; ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div> 
</body>
<script>
    /*用户-删除*/
    function member_del(Lurl,classid){
       layui.use(['layer','jquery'],function(){
            var $ = layui.jquery;
            var layer = layui.layer;
            $.ajax({
                url:Lurl
                ,data:{'classid':classid}
                ,method:'GET'
                ,dataType:'json'
                ,success:function(res){
                    if(res.state == 1){
                        layer.msg('删除成功',{icon:6,time:800},function(){
                            xadmin.father_reload();
                        });
                    }else{
                        layer.msg(res.state,{icon:2,time:1200});
                    }
                }
            });
            return false;
       });
    }

    function del(id){
        layui.use(['layer','jquery'],function(){
            var $ = layui.jquery;
            var layer = layui.layer;
            $.ajax({
                url:'<?php echo base_url('admin/classes/delete'); ?>'
                ,data:{'id':id}
                ,method:'GET'
                ,dataType:'json'
                ,success:function(res){
                    if(res.state == 1){
                        layer.msg('删除成功',{icon:6,time:800},function(){
                            xadmin.father_reload();
                        });
                    }else{
                        layer.msg(res.state,{icon:2,time:1200},function(){
                            xadmin.father_reload()
                        });
                    }
                }
            });
            return false;
        });
    }
</script>
</html>