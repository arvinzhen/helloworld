<?php 
	include("../../zhanshi.php");
	/**
	 * 转换时间戳     strtotime($time);
	 @var string
	 */
	if($_GET){//处理特定页面
		$curPage = isset($_GET["page"])?($_GET["page"] - 1):0;
		// $page = $curPage * 10;
	}else{
		$curPage = 0;
	}//$page表示显示第几页
  $search = "";//以下处理搜索
  $beginTime = isset($_POST["start"])?(strtotime($_POST["start"])):"";
  $endTime = isset($_POST["end"])?(strtotime($_POST["end"])):"";
  $name = isset($_POST["username"])?$_POST["username"]:"";
  if($beginTime){
    $search .= "and regtime > $beginTime ";
  }
  if($endTime){
    $search .= "and regtime < $endTime ";
  }
  if($name){
    $search .= "and username like '%$name%' ";
  }//搜索处理结束
  $limit = fenye($curPage);
  if($search){
    $condition = substr($search, 3);
    $sql = "select id,username,realname,regtime from user where ".$condition."order by id asc".$limit;
  }else{
    $condition = "";
    $sql = "select id,username,realname,regtime from user order by id asc".$limit;
  }
  $res = sqlquery("zhanshi", $sql);
  $str = "";
  if($res){
  	foreach ($res as $value) {
  		$id = $value["id"];
  		$username = $value["username"];
  		$realname = $value["realname"];
  		$regtime = date("Y-m-d H:i:s", $value["regtime"]);
  		$str .= "<tr><td><input type='checkbox' class='xuanzhong' name='id[]' value='$id' lay-skin='primary'></td>";
  		$str .= "<td>$id</td>";
  		$str .= "<td>$username</td>";
  		$str .= "<td>$realname</td>";
  		$str .= "<td>$regtime</td>";
  		$str .= "<td class='td-manage'><a title='编辑'  onclick=\"xadmin.open('编辑','user_edit.php?id=$id',600,400)\" href='javascript:;'><i class='layui-icon'>&#xe642;</i>编辑</a></td>";
  		$str .= "<td class='td-manage'><a onclick=\"xadmin.open('修改密码','user_editpwd.php?id=$id',600,400)\" title='修改密码' href='javascript:;'><i class='layui-icon'>&#xe631;</i>修改密码</a></td>";
  		$str .= "<td class='td-manage'><a title='删除' onclick=\"member_del(this,$id)\" href='javascript:;'><i class='layui-icon'>&#xe640;</i>删除</a></td>";
  		$str .= "</tr>";
  	}
  }else{
    $str .= "<tr>暂时没有你搜索的用户,需要注册一个吗?</tr>";
  }
 ?>
 <!DOCTYPE html>
<html class="x-admin-sm">
<head>
    <meta charset="UTF-8">
    <title>用户列表</title>
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
        <a href="">会员管理</a>
        <a>
          <cite>会员列表</cite></a>
      </span>
      <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" onclick="location.reload()" title="刷新">
        <i class="layui-icon layui-icon-refresh" style="line-height:30px"></i></a>
    </div>
    <div class="layui-fluid">
        <div class="layui-row layui-col-space15">
            <div class="layui-col-md12">
                <div class="layui-card">
                    <div class="layui-card-body ">
                        <form class="layui-form layui-col-space5" action="" method='POST' autocomplete="off">
                            <div class="layui-inline layui-show-xs-block">
                                <input class="layui-input"  autocomplete="off" placeholder="开始日" name="start" id="start">
                            </div>
                            <div class="layui-inline layui-show-xs-block">
                                <input class="layui-input"  autocomplete="off" placeholder="截止日" name="end" id="end">
                            </div>
                            <div class="layui-inline layui-show-xs-block">
                                <input type="text" name="username"  placeholder="请输入用户名" autocomplete="off" class="layui-input">
                            </div>
                            <div class="layui-inline layui-show-xs-block">
                                <button class="layui-btn"  lay-submit="" lay-filter="sreach"><i class="layui-icon">&#xe615;</i></button>
                            </div>
                        </form>
                    </div>
                    <div class="layui-card-header">
                        <button class="layui-btn layui-btn-danger" onclick="delAll()"><i class="layui-icon"></i>批量删除</button>
                        <button class="layui-btn" onclick="xadmin.open('添加用户','/admin/users/user_add.html',600,400)"><i class="layui-icon"></i>添加</button>
                    </div>
                    <div class="layui-card-body layui-table-body layui-table-main">
                        <table class="layui-table layui-form">
                            <thead>
                              <tr>
                                <th>
                                  <input type="checkbox" lay-filter="checkall" name="" lay-skin="primary">
                                </th>
                                <th>ID</th>
                                <th>用户名</th>
                                <th>真实姓名</th>
                                <th>注册时间</th>
                                <th colspan="3">操作</th></tr>
                            </thead>
                            <tbody>
                    						<?php echo $str; ?>
                    						<tr>
                    							<td><input id="as" type="checkbox" lay-filter="checknull" name="as" lay-skin="primary"></td>
                    							<td></td>
                    							<td></td>
                    							<td></td>
                    							<td></td>
                    							<td></td>
                    							<td></td>
                    							<td></td>
                    						</tr>
                            </tbody>
                        </table>
                    </div>
                    <?php if($res){bottomNav("user","user_index.php",$curPage, $condition);} ?>
                </div>
            </div>
        </div>
    </div> 
</body>
<script>
  layui.use(['laydate','form'], function(){
    var laydate = layui.laydate;
    var  form = layui.form;
    //执行一个laydate实例
    laydate.render({
      elem: '#start' //指定元素
    });

    //执行一个laydate实例
    laydate.render({
      elem: '#end' //指定元素
    });
    // 监听全选
    form.on('checkbox(checkall)', function(data){
      if(data.elem.checked){
        $("tbody input[name='id[]']").prop('checked',true);
      }else{
        $("tbody input[name='id[]']").prop('checked',false);
      }
      form.render('checkbox');
    });
    //反选
    form.on('checkbox(checknull)', function(data){
    	var item = $('.xuanzhong');
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
  function member_del(obj,id){
        // console.log(obj,id);return false;
      layer.confirm('确认要删除吗？',function(index){
          $.ajax({
            url:'/admin/users/user_del.php',
            data:{'id':id},
            method:'GET',
            dataType:'json',
            success:function(res){
              if(res.state == 1){
                layer.msg('已删除',{icon:1,time:2000});
              }else{
                layer.msg(res.state,{icon:2,time:3000});
              }
            }
          });
          $(obj).parents("tr").remove();
      });
  }



  function delAll (argument) {
    var ids = [];

    // 获取选中的id 
    $("tbody input[name='id[]']").each(function(index, el) {
        if($(this).prop('checked')){
           ids.push($(this).val())
        }
    });
		if(ids.length == 0){
			layer.msg('请选择要删除的成员');return false;
		}else{
      layer.confirm('确认要删除吗？'+ids.toString(),function(){
        	$.ajax({
        		method:'POST',
        		data:{ids},
        		url:'/admin/users/user_del.php',
        		dataType:'json',
        		success:function(res){
        			if(res.state == 1){
        				layer.msg('已删除',{icon:1});
        			}else{
        				layer.msg(res.state,{icon:2});
        			}
        		}

        	});
         //捉到所有被选中的，发异步进行删除
         $(".layui-form-checked").not('.header').parents('tr').remove();
        });
		}
  }
</script>
</html>