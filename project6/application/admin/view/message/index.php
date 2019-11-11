<!DOCTYPE html>
<html class="x-admin-sm">
<head>
	<meta charset="UTF-8">
	<title>为力-后台1.0</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <link rel="stylesheet" href="__CSS__/font.css">
    <link rel="stylesheet" href="__CSS__/xadmin.css">
    <link rel="stylesheet" href="__CSS__/test.css">
    <script src="__LIB__/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="__JS__/xadmin.js"></script>
    <!--[if lt IE 9]>
      <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
      <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
	<div class="x-nav">
	  <span class="layui-breadcrumb">
	    <a href="">首页</a>
	    <a href="">留言信息管理</a>
	    <a>
	      <cite>主页面</cite></a>
	  </span>
	  <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" onclick="location.reload()" title="刷新">
	    <i class="layui-icon layui-icon-refresh" style="line-height:30px"></i></a>
	</div>
	<div class="layui-fluid">
		<div class="layui-row">
			<div class="layui-col-md12">
				<div class="layui-card">
					<div class="layui-card-body">
						<form class="layui-form" action="{:url('@admin/message/index')}" method="get">
                            <div class="layui-inline layui-show-xs-block">
                                <input class="layui-input"  autocomplete="off" placeholder="开始日" name="start" id="start">
                            </div>
                            <div class="layui-inline layui-show-xs-block">
                                <input class="layui-input"  autocomplete="off" placeholder="截止日" name="end" id="end">
                            </div>
                            <div class="layui-inline layui-show-xs-block">
                                <input type="text" name="name"  placeholder="姓名" autocomplete="off" class="layui-input">
                            </div>
                            <div class="layui-inline layui-show-xs-block">
                                <input type="text" name="phone"  placeholder="电话" autocomplete="off" class="layui-input">
                            </div>
                            <div class="layui-inline layui-show-xs-block">
                                <button class="layui-btn"  lay-submit="" lay-filter="sreach"><i class="layui-icon">&#xe615;</i></button>
                            </div>
						</form>
					</div>
					<hr/>
					<div class="layui-card-header">
                        <button class="layui-btn layui-btn-danger" onclick="delAll()"><i class="layui-icon"></i>批量删除</button>
                        <button class="layui-btn" onclick="xadmin.open('添加用户','{:url('admin/message/create')}','','')"><i class="layui-icon"></i>添加</button>
					</div>
					<hr/>
					<div class="layui-card-body">
						<table class="layui-table layui-form">
							<thead>
								<tr>
									<th>
                                      <input type="checkbox" name="" lay-filter="checkall"  lay-skin="primary">
									</th>
									<th>id</th>
									<th>姓名</th>
									<th>电话</th>
									<th>发布时间</th>
									<th colspan="3">操作</th>
								</tr>
							</thead>
							<tbody>
								{eq name="pz" value="1"}
									{volist name="data" id="v"}
								<tr>
									<td>
                                      <input type="checkbox" name="id[]"  lay-skin="primary" value="{$v.classid}">
									</td>
									<td>{$v.id}</td>
									<td>{$v.name}</td>
									<td>{$v.phone}</td>
									<td>{$v.releasetime}</td>
									<td><a href=javascript:; onclick="xadmin.open('详情','{:url('@admin/message/read/'.$v.id)}','','')">详情</a></td>
									<td><a href=javascript:; onclick="xadmin.open('编辑','{:url('@admin/message/edit/'.$v.classid)}','','')">编辑</a></td>
									<td><a href=javascript:; onclick="member_del(this,{$v.classid})">删除</a></td>
								</tr>
									{/volist}
								<tr>
									<td>
										<input type="checkbox" name="" lay-filter="checknull" lay-skin="primary">
									</td>
								</tr>
								{else/}
								<tr><td colspan="8" class="text-center">当前没有相关内容,请添加一点吧</td></tr>
								{/eq}
							</tbody>
						</table>
					</div>
					<div class="layui-card-body">
						{eq name="pz" value="1"}
							<div>
								{$page|raw}
							</div>
						{/eq}
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<script>
	layui.use(['form','layer','laydate','jquery'],function(){
		var $ = layui.jquery;
		var form = layui.form
		,layer = layui.layer
		,laydate = layui.laydate;
		//实例化日历
		laydate.render({
			elem:'#start'
		});
		laydate.render({
			elem:'#end'
		});

		//全选
		form.on('checkbox(checkall)',function(data){
			if($(this).prop('checked')){
				$("input[name='id[]']").prop('checked',true);
			}else{
				$("input[name='id[]']").prop('checked',false);
			}
			form.render('checkbox');
		})
		//反选
		form.on('checkbox(checknull)',function(data){
			$("input[name='id[]']").each(function(){
				if($(this).prop('checked')){
					$(this).prop('checked',false);
				}else{
					$(this).prop('checked',true);
				}
			})
			form.render('checkbox');
		})
		//监听提交
	});


      /*用户-删除*/
      function member_del(obj,id){
          layer.confirm('确认要删除吗？',function(index){
              $.ajax({
                url:"{:url('@admin/message/delete/')}"+id
                ,method:'POST'
                ,dataType:'json'
                ,success:function(res){
                  if(res.state == 1){
                    layer.msg('已删除!',{icon:1,time:1000},function(){
                    	xadmin.father_reload();
                    });
                  }else{
                    layer.msg(res.state,{icon:2,time:1200});
                  }
                }
              });
          });
          return false;
      }

      //全删
      function delAll (argument) {
         var ids = [];
    // 获取选中的id 
        $("input[name='id[]']").each(function(index, el) {
            if($(this).prop('checked')){
               ids.push($(this).val())
            }
        });
        if(ids.length == 0){
            layer.msg('请选择要删除的成员');return false;
        }
        layer.confirm('确认要删除吗？'+ids,function(index){
            //捉到所有被选中的，发异步进行删除
            $.ajax({
              url:'{:url('@admin/message/deletes')}'
              ,data:{ids}
              ,method:'POST'
              ,dataType:'json'
              ,success:function(res){
                if(res.state == 1){
                  layer.msg('删除成功',{icon:1,time:800},function(){
                  	xadmin.father_reload();
                  });
                }else{
                  layer.msg(res.state,{icon:2,time:1200},function(){
                    xadmin.father_reload();
                  })
                }
              }
            });
            return false;
        });
      }
</script>
</html>