<?php
    include("../../zhanshi.php");
    checkLogin();
    $curPage = isset($_GET['page'])?$_GET['page']-1:0;
    $search = "";$condition = "";$sql = "select id,name,tel,title,releasetime from message";//初始化
    $str = "";$limit = fenye($curPage);//初始化
    $start = isset($_POST['start'])?strtotime($_POST['start']):'';
    if($start){
        $search .= "and releasetime > '$start' ";
    }
    $end = isset($_POST['end'])?strtotime($_POST['end']):'';
    if($end){
        $search .= "and releasetime < '$end' ";
    }
    $title = isset($_POST['title'])?$_POST['title']:'';
    if($title){
        $search .= "and title like '%$title%' ";
    }
    if($search){
        $condition = substr($search,3);
        $sql .= " where ".$condition;
    }
    $sql .= " order by id asc ".$limit;
    $res = sqlquery("zhanshi",$sql);
    if($res){
        foreach($res as $value){
			$id = $value['id'];
			$name = $value['name'];
			$tel = $value['tel'];
			$title = $value['title'];
			$releasetime = date("Y-m-d H:i:s",$value['releasetime']);
			$str .= "<tr><td><input type='checkbox' name='id[]' lay-skin='primary' value='$id'></td>";
			$str .= "<td>$id</td>";
			$str .= "<td>$name</td>";
			$str .= "<td>$tel</td>";
			$str .= "<td>$title</td>";
			$str .= "<td>$releasetime</td>";
			$str .= "<td class='td-manage'><a title='编辑' onclick=\"xadmin.open('编辑','/admin/message/message_edit.php?id=$id')\" href='javascript:;'><i class='iconfont'>&#xe69e;</i></a></td>";
			$str .= "<td class='td-manage'><a title='详情' onclick=\"xadmin.open('详情','/admin/message/message_detail.php?id=$id')\" href='javascript:;'><i class='iconfont'>&#xe6a4;</i></a></td>";
			$str .= "<td class='td-manage'><a title='删除' onclick=\"titleDel(this,$id)\" href='javascript:;'><i class='iconfont'>&#xe69d;</i></a></td>";
			$str .= "</tr>";
        }
    }else{
        $str = "暂时没有相关的信息";
    }
?>
<!DOCTYPE html>
<html class="x-admin-sm">
<head>
    <meta charset="UTF-8">
    <title>公司简介标题管理</title>
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
    	td.td-manage>a{display: block;width: 100%;height:100%;padding:0;}
    	#as{width:35px;}
    </style>
    <!--[if lt IE 9]>
      <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
      <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <div class="x-nav">
        <span class="layui-breadcrumb">
            <a href="/admin/login/welcome.php">首页</a>
            <a href="">关于我们</a>
            <a>
                <cite>总览页面</cite></a>
        </span>
        <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" onclick="location.reload()" title="刷新">
            <i class="layui-icon layui-icon-refresh" style="line-height:30px"></i>
        </a>
    </div>
    <div class="layui-fluid">
        <div class="layui-row layui-col-space15">
            <div class="layui-col-md12">
                <div class="layui-card">
                    <div class="layui-card-body ">
                        <form class="layui-form layui-col-space5" action="/admin/message/message_index.php" method="POST">
                        <div class="layui-inline layui-show-xs-block">
                                <input class="layui-input"  autocomplete="off" placeholder="开始日" name="start" id="start">
                            </div>
                            <div class="layui-inline layui-show-xs-block">
                                <input class="layui-input"  autocomplete="off" placeholder="截止日" name="end" id="end">
                            </div>
                            <div class="layui-input-inline layui-show-xs-block">
                                <input type="text" name="title" placeholder="请输入小标题" autocomplete="off" class="layui-input"></div>
                            <div class="layui-input-inline layui-show-xs-block">
                                <button class="layui-btn" lay-submit="" lay-filter="sreach">
                                    <i class="layui-icon">&#xe615;</i></button>
                            </div>
                        </form>
                    </div>
                    <div class="layui-card-header">
                        <button class="layui-btn layui-btn-danger" onclick="delAll()">
                            <i class="layui-icon"></i>批量删除</button>
                        <button class="layui-btn" onclick="xadmin.open('添加用户','/admin/message/message_add.php','','')">
                            <i class="layui-icon"></i>添加</button></div>
                    <div class="layui-card-body layui-table-body layui-table-main">
                        <table class="layui-table layui-form">
                            <thead>
                                <tr>
                                    <th>
                                        <input type="checkbox" name="" lay-filter="checkall" lay-skin="primary">
                                    </th>
                                    <th>id</th>
                                    <th>姓名</th>
                                    <th>联系电话</th>
                                    <th>标题</th>
                                    <th>注册时间</th>
                                    <th colspan="3">操作</th></tr>
                            </thead>
                            <tbody>
                            	<?php echo $str; ?>
                            	<tr><td><input type="checkbox" name="" lay-filter="checknull" lay-skin="primary"></td></tr>
                            </tbody>
                        </table>
                    </div>
                    <?php if($res){bottomNav("message","message_index.php",$curPage,$condition);} ?>
            </div>
        </div>
    </div>
</body>
<script>layui.use(['laydate', 'form'],function(){
    var form = layui.form;
    var laydate = layui.laydate;
    laydate.render({
        elem:'#start'
    });
    laydate.render({
        elem:'#end'
    });
	form.on('checkbox(checkall)',function(data){
		if(data.elem.checked){
			$("tbody input[name='id[]']").prop("checked",true);
		}else{
			$("tbody input[name='id[]']").prop("checked",false);
		}
		form.render('checkbox');
	});
	form.on('checkbox(checknull)',function(data){
		$("tbody input[name='id[]']").each(function(){
			if($(this).prop("checked")){
				$(this).prop("checked",false);
			}else{
				$(this).prop("checked",true);
			}
		});
		form.render('checkbox');
	});
});

    function titleDel(ele,index){
        if(!index){
            layer.msg('该项目不存在',{icon:2,time:2000});return false;
        }
        $.ajax({
            url:'/admin/message/message_del.php',
            method:'GET',
            data:{id:index},
            dataType:'json',
            success:function(res){
                if(res.state == 1){
                    layer.msg('删除成功',{icon:1,time:800},function(){
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
    }

    function delAll(argument) {
        var ids = [];
        $("tbody input[name='id[]']").each(function(index, el){
        	if($(this).prop("checked")){
        		ids.push($(this).val());
        	}
        });
        if(ids.length == 0){
        	layer.msg('请选择 删除项');return false;
        }
        layer.confirm('确认要删除吗？' + ids.toString(),
        function(index) {
            var allId = ids.toString();
            $.ajax({
                url:'/admin/message/message_del.php',
                data:{'id':allId},
                method:'POST',
                dataType:'json',
                success:function(res){
                    if(res.state == 1){
                        layer.msg('删除成功',{icon:1,time:1200},function(){
                            xadmin.reload();
                        })
                    }else{
                        layer.msg(res.state,{icon:2,time:2000},function(){
                            xadmin.reload();
                            return false;
                        })
                    }
                }
            });
            //捉到所有被选中的，发异步进行删除
            $(".layui-form-checked").not('.header').parents('tr').remove();
            return false;
        });
    }
</script>

</html>