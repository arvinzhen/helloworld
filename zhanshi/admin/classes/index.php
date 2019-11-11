<?php
    include("../../zhanshi.php");
    checkLogin();
    $curPage = isset($_GET['page'])?$_GET['page']-1:0;
    $search = "";$limit = fenye($curPage);$condition = "";
    $sql = "select * from classes where ";$str = "";//初始化
    $search .= "and classid>0 ";
    $type = isset($_POST['type'])?$_POST['type']:'';
    if($type){
        $search .= "and type='$type' ";
    }
    $name = isset($_POST['title'])?$_POST['title']:'';
    if($name){
        $search .= "and name like '%$name%' ";
    }
    $condition = substr($search,3);
    $sql .= $condition;
    $sql .= "order by id asc ".$limit;
    $res = sqlquery("zhanshi",$sql);
    if($res){
        $arr = [0=>'所有',1=>'新闻资讯',2=>'工程案例A',3=>'产品中心',4=>'工程案例B'];
        foreach($res as $value){
            $id = $value['id'];
            $classid = $value['classid'];
            $name = $value['name'];
            $type = $value['type'];
            $typename = $arr[$type];
            switch ($type){
                case 1:
                    $str .= "<tr><td><input type='checkbox' name='id[]' lay-skin='primary' value='$id'></td>";
                    $str .= "<td>$id</td>";
                    $str .= "<td>$classid</td>";
                    $str .= "<td>$name</td>";
                    $str .= "<td>$typename</td>";
                    $sql = "select id from news where classid=$classid";
                    $id = sqlquery("zhanshi",$sql,false)['id'];
                    $str .= "<td class='td-manage'><a title='编辑' onclick=\"xadmin.open('编辑','/admin/news/news_edit.php?id=$id')\" href='javascript:;'><i class='layui-icon'>&#xe642;</i>编辑</a></td>";
                    $str .= "<td class='td-manage'><a title='详情' onclick=\"xadmin.open('详情','/admin/news/news_detail.php?id=$id')\" href='javascript:;'><i class='layui-icon'>&#xe631;</i>详情</a></td>";
                    $str .= "<td class='td-manage'><a title='删除' onclick=\"titleDel($id,$classid)\" href='javascript:;'><i class='iconfont'>&#xe69d;</i></a></td>";
                    $str .= "</tr>";
                    break;
                case 2:
                    $str .= "<tr><td><input type='checkbox' name='id[]' lay-skin='primary' value='$id'></td>";
                    $str .= "<td>$id</td>";
                    $str .= "<td>$classid</td>";
                    $str .= "<td>$name</td>";
                    $str .= "<td>$typename</td>";
                    $sql = "select id from aworks where classid=$classid";
                    $id = sqlquery("zhanshi",$sql,false)['id'];
                    $str .= "<td class='td-manage'><a title='编辑'  onclick=\"xadmin.open('编辑','/admin/aworks/work_edit.php?id=$id&classid=$classid',800,800)\" href='javascript:;'><i class='layui-icon'>&#xe642;</i>编辑</a></td>";
                    $str .= "<td class='td-manage'><a onclick=\"xadmin.open('详情','/admin/aworks/work_detail.php?id=$id',800,800)\" title='详情' href='javascript:;'><i class='layui-icon'>&#xe631;</i>详情</a></td>";
                    $str .= "<td class='td-manage'><a title='删除' onclick=\"member_del2(this,$id,$classid)\" href='javascript:;'><i class='iconfont'>&#xe69d;</i></a></td>";
                    $str .= "</tr>";
                    break;
                case 3:
                    $str .= "<tr><td><input type='checkbox' name='id[]' lay-skin='primary' value='$id'></td>";
                    $str .= "<td>$id</td>";
                    $str .= "<td>$classid</td>";
                    $str .= "<td>$name</td>";
                    $str .= "<td>$typename</td>";
                    $sql = "select id from product where classid=$classid";
                    $id = sqlquery("zhanshi",$sql,false)['id'];
                    $str .= "<td class='td-manage'><a title='编辑'  onclick=\"xadmin.open('编辑','/admin/product/product_edit.php?id=$id&classid=$classid',800,800)\" href='javascript:;'><i class='layui-icon'>&#xe642;</i>编辑</a></td>";
                    $str .= "<td class='td-manage'><a onclick=\"xadmin.open('详情','/admin/product/product_detail.php?id=$id',800,800)\" title='详情' href='javascript:;'><i class='layui-icon'>&#xe631;</i>详情</a></td>";
                    $str .= "<td class='td-manage'><a title='删除' onclick=\"member_del3(this,$id,$classid)\" href='javascript:;'><i class='iconfont'>&#xe69d;</i></a></td>";
                    $str .= "</tr>";
                    break;
                case 4:
                    $str .= "<tr><td><input type='checkbox' name='id[]' lay-skin='primary' value='$id'></td>";
                    $str .= "<td>$id</td>";
                    $str .= "<td>$classid</td>";
                    $str .= "<td>$name</td>";
                    $str .= "<td>$typename</td>";
                    $sql = "select id from bworks where classid=$classid";
                    $id = sqlquery("zhanshi",$sql,false)['id'];
                    $str .= "<td class='td-manage'><a title='编辑'  onclick=\"xadmin.open('编辑','/admin/bworks/work_edit.php?id=$id&classid=$classid',800,800)\" href='javascript:;'><i class='layui-icon'>&#xe642;</i>编辑</a></td>";
                    $str .= "<td class='td-manage'><a onclick=\"xadmin.open('详情','/admin/bworks/work_detail.php?id=$id',800,800)\" title='详情' href='javascript:;'><i class='layui-icon'>&#xe631;</i>详情</a></td>";
                    $str .= "<td class='td-manage'><a title='删除' onclick=\"member_del4(this,$id,$classid)\" href='javascript:;'><i class='iconfont'>&#xe69d;</i></a></td>";
                    $str .= "</tr>";
                    break;
                default:
                    $str .= "<tr><td><input type='checkbox' name='id[]' lay-skin='primary' value='$id'></td>";
                    $str .= "<td>$id</td>";
                    $str .= "<td>$classid</td>";
                    $str .= "<td>$name</td>";
                    $str .= "<td>$typename</td>";
                    $str .= "<td class='td-manage'><a title='编辑' onclick=\"xadmin.open('编辑','/admin/classes/classes_edit.php?id=$id')\" href='javascript:;'><i class='layui-icon'>&#xe642;</i>编辑</a></td>";
                    $str .= "<td class='td-manage'><a title='详情' onclick=\"\" href='javascript:;'><i class='layui-icon'>&#xe631;</i>详情</a></td>";
                    $str .= "<td class='td-manage'><a title='删除' onclick=\"benDel($id)\" href='javascript:;'><i class='iconfont'>&#xe69d;</i></a></td>";
                    $str .= "</tr>";
                    break;
            }
        }
    // ohno($str);
    }else{
        $str .= "当前还没有相关内容,添加一些吧";
    }
?>
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
            <a href="">资讯中心</a>
            <a>
                <cite>资讯总览</cite></a>
        </span>
        <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" onclick="location.reload()" title="刷新">
            <i class="layui-icon layui-icon-refresh" style="line-height:30px"></i>
        </a>
    </div>
    <div class="layui-fluid">
        <div class="layui-row layui-col-space15">
            <div class="layui-col-md8">
                <div class="layui-card">
                    <div class="layui-card-body ">
                        <form class="layui-form layui-col-space5" action="/admin/classes/index.php" method="POST">
                            <div class="layui-inline layui-show-xs-block">
                                <select class="layui-select" name="type" id="type">
                                    <option value="">请选择类别</option>
                                    <option value="1">新闻资讯</option>
                                    <option value="2">工程案例</option>
                                    <option value="3">产品中心</option>
                                    <option value="4">解决方案</option>
                                </select>
                            </div>
                            <div class="layui-input-inline layui-show-xs-block">
                                <input type="text" name="title" placeholder="请输入小标题" autocomplete="off" class="layui-input"></div>
                            <div class="layui-input-inline layui-show-xs-block">
                                <button class="layui-btn" lay-submit="" lay-filter="sreach">
                                    <i class="layui-icon">&#xe615;</i></button>
                            </div>
                        </form>
                    </div>
                        <table class="layui-table layui-form">
                            <thead>
                                <tr>
                                    <th>
                                        <input type="checkbox" name="" lay-filter="checkall" lay-skin="primary">
                                    </th>
                                    <th>当前的标题ID</th>
                                    <th>当前的标题ClassID</th>
                                    <th>当前的标题</th>
                                    <th>当前的classID所属</th>
                                    <th colspan="3">操作</th></tr>
                            </thead>
                            <tbody>
                            	<?php echo $str; ?>
                            	<tr><td><input type="checkbox" name="" lay-filter="checknull" lay-skin="primary"></td></tr>
                            </tbody>
                        </table>
                    </div>
                    <?php if($res){bottomNav("classes","index.php",$curPage,$condition);} ?>
            </div>
            <div class="layui-col-md4">
                <div class="layui-block">
                    <div class="layui-form layui-block">
                        <div class="layui-input-inline layui-show-xs-block">
                            <select class="layui-select" name="sontype" id="sontype">
                                <option value="">请选择类别:</option>}
                                <option value="1">新闻资讯</option>
                                <option value="2">工程案例</option>
                                <option value="3">产品中心</option>
                                <option value="4">解决方案</option>
                            </select>
                        </div>
                        <div class="layui-input-inline layui-show-xs-block">
                            <input type="text" class="layui-input" name="name" id="namein" autocomplete="off" placeholder="加子类别">
                        </div>
                        <div class="layui-input-inline layui-show-xs-block">
                            <button class="layui-btn" lay-submit="" lay-filter="add">添加</button>
                        </div>
                    </div>
                    <table class="layui-table">
                        <caption>总分类</caption>
                        <thead>
                            <tr>
                                <th>类别</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</body>
<script>
    layui.use('form',function(){//全选反选
        var form = layui.form;
        form.on('checkbox(checkall)',function(data){
            var ids = $("input[type=checkbox][name='id[]']");
            if(data.elem.checked){
                ids.prop('checked',true);
            }else{
                ids.prop('checked',false);
            }
            form.render('checkbox');
        });
        form.on('checkbox(checknull)',function(data){
            $("input[type=checkbox][name='id[]']").each(function () {
               if($(this).prop('checked')){
                   $(this).prop('checked',false);
               } else{
                   $(this).prop('checked',true);
               }
               form.render('checkbox');
            });
        });

        form.on('submit(add)',function(data){
            if(!data.field.sontype){
                layer.msg('选择大类别',{icon:0});
                return false;
            }
            if(!data.field.name){
                layer.msg('类别名称不能为空!',{icon:0});
                return false;
            }
            $.ajax({
                url:'/admin/classes/add_save.php',
                data:data.field,
                method:'POST',
                dataType:'json',
                success:function(res){
                    if(res.state == 1){
                        layer.msg('添加成功',{icon:1,time:600},function(){
                            xadmin.father_reload();
                        });
                    }else{
                        layer.msg(res.state,{icon:2,time:1200});
                    }
                }
            });
            return false;
        });
    });

    function titleDel(id,classid){//单个删除
        $.ajax({
            url:'/admin/news/news_del.php',
            method:'POST',
            data:{'id':id,'classid':classid},
            dataType:'json',
            success:function(res){
                if(res.state == 1){
                    layer.msg('删除成功',{icon:1,time:1000},function(){
                        xadmin.father_reload();
                    })
                }else{
                    layer.msg(res.state,{icon:2,time:1500},function(){
                        xadmin.father_reload();
                    })
                }
            }
        });
        return false;
    }

    function member_del2(obj,id,classid){
      layer.confirm('确认要删除吗？',function(index){
          $.ajax({
            url:'/admin/aworks/work_del.php',
            data:{'id':id,'classid':classid},
            method:'GET',
            dataType:'json',
            success:function(res){
              if(res.state == 1){
                layer.msg('已删除',{icon:1,time:2000},function(){
                    xadmin.father_reload();
                });
              }else{
                layer.msg(res.state,{icon:2,time:3000});
              }
            }
          });
          return false;
          // $(obj).parents("tr").remove();
      });
  }
  function member_del3(obj,id,classid){
      layer.confirm('确认要删除吗？',function(index){
          $.ajax({
            url:'/admin/product/product_del.php',
            data:{'id':id,'classid':classid},
            method:'GET',
            dataType:'json',
            success:function(res){
              if(res.state == 1){
                layer.msg('已删除',{icon:1,time:2000},function(){
                    xadmin.father_reload();
                });
              }else{
                layer.msg(res.state,{icon:2,time:3000});
              }
            }
          });
          return false;
          // $(obj).parents("tr").remove();
      });
  }

  function member_del4(obj,id,classid){
      layer.confirm('确认要删除吗？',function(index){
          $.ajax({
            url:'/admin/bworks/work_del.php',
            data:{'id':id,'classid':classid},
            method:'GET',
            dataType:'json',
            success:function(res){
              if(res.state == 1){
                layer.msg('已删除',{icon:1,time:2000},function(){
                    xadmin.father_reload();
                });
              }else{
                layer.msg(res.state,{icon:2,time:3000});
              }
            }
          });
          return false;
          // $(obj).parents("tr").remove();
      });
  }

</script>
</html>