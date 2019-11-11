<!DOCTYPE html>
<html class="x-admin-sm">
<head>
	<meta charset="UTF-8">
	<title>为力-后台1.0</title>
	<meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="stylesheet" href="__CSS__/font.css">
    <link rel="stylesheet" href="__CSS__/login.css">
	<link rel="stylesheet" href="__CSS__/xadmin.css">
    <script type="text/javascript" src="__LIB__/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="__JS__/xadmin.js"></script>
    <script type="text/javascript" src="__JS__/jquery.min.js"></script>
    <!--[if lt IE 9]>
      <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
      <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <div class="x-nav">
	  <span class="layui-breadcrumb">
	    <a href="">首页</a>
	    <a href="">职位信息管理</a>
	    <a>
	      <cite>主页面</cite></a>
	  </span>
	  <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" onclick="location.reload()" title="刷新">
	    <i class="layui-icon layui-icon-refresh" style="line-height:30px"></i></a>
	</div>
	<div class="layui-fluid">
		<div class="layui-row">
			<div class="layui-card">
                <div class="layui-card-body ">
                    <form class="layui-form layui-col-space5" method="GET" action="{:url('@admin/users/index')}">
                        <div class="layui-inline layui-show-xs-block">
                            <input type="text" name="username"  placeholder="会员名字" autocomplete="off" class="layui-input">
                        </div>
                        <div class="layui-inline layui-show-xs-block">
                        	<select name="level" id="level" class="layui-select">
		                        <option value="1">普通会员</option>
		                        <option value="2">高级会员</option>
		                        <option value="3">管理员1级</option>
		                        <option value="4">管理员2级</option>
		                        <option value="5">管理员3级</option>
		                        <option value="6">管理员4级</option>
		                        <option value="7">管理员5级</option>
		                        <option value="8">管理员6级</option>
		                        <option value="9">管理员7级</option>
                        	</select>
                        </div>
                        <div class="layui-inline layui-show-xs-block">
                            <button class="layui-btn"  lay-submit="" lay-filter="sreach"><i class="layui-icon">&#xe615;</i></button>
                        </div>
                    </form>
                </div>
                <div class="layui-card-body">
                	<table class="layui-table layui-form">
                		<thead>
                			<tr>
                				<th>
                					<input type="checkbox" name="" lay-filter="checkall" lay-skin="primary">
                				</th>
                				<th>ID</th>
                				<th>Level</th>
                				<th>UserName</th>
                				<th>Releasetime</th>
                				<th colspan="3">操作</th>
                			</tr>
                		</thead>
                		<tbody>
                			{volist name="data" id="v" empty="<tr>当前为空</tr>"}
                			<tr>
                				<td>
                					<input type="checkbox" name="id[]"  lay-skin="primary" value="{$v.id}">
                				</td>
                				<td>{$v.id}</td>
                				<td>{$v.level}</td>
                				<td>{$v.username}</td>
                				<td>{$v.releasetime}</td>
                                <td class="cz">
                                  <a href="javascript:;"  title="详情"> <!--  echo url('@admin/users/read/'.$v['id']);  -->
                                    <i class="iconfont">&#xe6a4;</i>
                                  </a></td><td class="cz">
                                  <a title="编辑"  href="javascript:;"><!--  onclick="xadmin.open('编辑','{:url('@admin/users/edit/'.$v['id'])}')" -->
                                    <i class="layui-icon">&#xe642;</i>
                                  </a></td><td class="cz">
                                  <a title="删除" class="test" onclick="member_del(this,'{$v.id}')" href="javascript:;">
                                    <i class="layui-icon">&#xe640;</i>
                                  </a>
                                </td>
                			</tr>
                			{/volist}
                			<tr>
                				<td>
                					<input type="checkbox" name="" lay-filter="checknull"  lay-skin="primary">
                				</td>
                			</tr>
                		</tbody>
                	</table>
                </div>
              <div class="layui-card-body ">
                  <div class="page">
                      {$data|raw}
                  </div>
              </div>
			</div>
		</div>
	</div>
</body>
<script>
	layui.use(['form','layer','jquery'],function(){
		var $ = layui.jquery;
		var form = layui.form
		,layer = layui.layer;
		<?php echo "var level = ".$len.";"; ?>
		$("#level>option").each(function(){
			if($(this).val() >= level){
				$(this).remove();
			}
		});
		form.render();

		//
        form.on('checkbox(checkall)',function(data){
          if(data.elem.checked){
            $("input[type=checkbox][name='id[]']").prop('checked',true);
          }else{
            $("input[type=checkbox][name='id[]']").prop('checked',false);
          }
          form.render('checkbox');
        });

        form.on('checkbox(checknull)',function(data){
          $("input[type=checkbox][name='id[]']").each(function(){
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
      layer.confirm('确认要删除吗？',function(index){
          $.ajax({
            url:"{:url('@admin/users/delete/')}"+id
            ,method:'GET'
            ,data:{}
            ,dataType:'json'
            ,success:function(res){
              if(res.state == 1){
                $(obj).parents("tr").remove();
                layer.msg('已删除!',{icon:1,time:1000});
              }else{
                layer.msg(res.state,{icon:2,time:1200},function(){
                  xadmin.father_reload();
                })
              }
            }
          });
      });
      return false;
  }


</script>
</html>