<!DOCTYPE html>
<html class="x-admin-sm">
<head>
    <meta charset="UTF-8">
    <title>留言管理</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <link rel="stylesheet" href="/public/css/font.css">
    <link rel="stylesheet" href="/public/css/xadmin.css">
    <script src="/public/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="/public/js/xadmin.js"></script>
    <style>
        td.td-manage{
            width:50px;
        }
    </style>
    <!--[if lt IE 9]>
        <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
        <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <div class="x-nav">
        <span class="layui-breadcrumb">
        <a href="http://hj.com">首页</a>
        <a href="http://hj.com/admin/classes">类别中心</a>
        <a>
            <cite>反馈留言</cite></a>
        </span>
        <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" onclick="location.reload()" title="刷新">
        <i class="layui-icon layui-icon-refresh" style="line-height:30px"></i></a>
    </div>
    <div class="layui-fluid">
        <div class="layui-row layui-col-space15">
            <div class="layui-col-md12">
                <div class="layui-card">
                    <div class="layui-card-body ">
                    <form class="layui-form layui-col-space5" action="" method="POST">
                        <div class="layui-inline layui-show-xs-block">
                            <input type="text" name="name"  placeholder="姓名" autocomplete="off" class="layui-input">
                        </div>
                        <div class="layui-inline layui-show-xs-block">
                            <input type="text" name="tel"  placeholder="电话" lay-verify="phone" autocomplete="off" class="layui-input">
                        </div>
                        <div class="layui-inline layui-show-xs-block">
                            <button class="layui-btn"  lay-submit="" lay-filter="sreach"><i class="layui-icon">&#xe615;</i></button>
                        </div>
                    </form>
                    </div>
                    <div class="layui-card-header">
                        <button class="layui-btn layui-btn-danger" onclick="delAll()"><i class="layui-icon"></i>批量删除</button>
                    </div>
                    <div class="layui-card-body layui-table-body layui-table-main">
                        <table class="layui-table layui-form">
                            <thead>
                              <tr>
                                <th>
                                  <input type="checkbox" lay-filter="checkall" name="" lay-skin="primary">
                                </th>
                                <th>用户名</th>
                                <th>电话</th>
                                <th>注册时间</th>
                                <th colspan="3">操作</th></tr>
                            </thead>
                            <tbody>
                                <?php echo $content; ?>
                                <tr>
                                    <td><input id="as" type="checkbox" lay-filter="checknull" name="as" lay-skin="primary"></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class=""layui-card-body>
                        <?php echo $fy; ?>
                    </div>
                </div>
            </div>
        </div>
    </div> 
</body>
<script>
  layui.use(['laydate','form'], function(){
    var laydate = layui.laydate;
    var  form = layui.form;

    // 监听全选
    form.on('checkbox(checkall)', function(data){
      if(data.elem.checked){
        $("input.ids").prop('checked',true);
      }else{
        $("input.ids").prop('checked',false);
      }
      form.render('checkbox');
    });
    //反选
    form.on('checkbox(checknull)', function(data){
    	var item = $('input.ids');
    	item.each(function(){
    		if($(this).prop('checked')){
    			$(this).prop('checked',false);
    		}else{
    			$(this).prop('checked',true);
    		}
    	});
    	form.render('checkbox');
    });

  });

  /*用户-删除*/
  function delAll () {
        var arr = [];
        $('input.ids').each(function(){
            if($(this).prop('checked')){
                arr.push($(this).val());
            }
        });
        layer.confirm('确认要删除吗？'+arr,function(){
            //捉到所有被选中的，发异步进行删除
            $.ajax({
                url:'<?php echo site_url('admin/message/delete'); ?>'
                ,data:{'ids':arr}
                ,method:'POST'
                ,dataType:'json'
                ,success:function(res){
                    if(res.state == 1){
                        layer.msg('删除了'+arr,{icon:6,time:800},function(){
                            xadmin.father_reload();
                        });
                    }else{
                        layer.msg(res.state,{icon:2,time:1200},function(){
                            xadmin.father_reload();
                        });
                    }
                }
            });
            return false;
            // layer.msg('删除成功', {icon: 1});
            // $(".layui-form-checked").not('.header').parents('tr').remove();
        });
    }
function del(id){
        layer.confirm('确认要删除吗？',function(){
            //发异步删除数据
            $.ajax({
                url:'<?php echo site_url('admin/message/delete'); ?>'
                ,data:{'id':id}
                ,method:'POST'
                ,dataType:'json'
                ,success:function(res){
                    if(res.state == 1){
                        layer.msg('删除成功',{icon:6,time:800},function(){
                            xadmin.father_reload();
                        });
                    }else{
                        laer.msg(res.state,{icon:2,time:1200});
                    }
                }
            });
            return false;
        });
  }
</script>
</html>