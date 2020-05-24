<?php //ohno($list); ?>
<!DOCTYPE html>
<html class="x-admin-sm">
    <head>
        <meta charset="UTF-8">
        <title>欢迎页面-X-admin2.2</title>
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
            <a href="">公司简介管理</a>
            <a>
              <cite>主页面</cite></a>
          </span>
          <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" onclick="location.reload()" title="刷新">
            <i class="layui-icon layui-icon-refresh" style="line-height:30px"></i></a>
        </div>
        <div class="layui-fluid">
            <div class="layui-row layui-col-space15">
                <div class="layui-col-md12">
                    <div class="layui-card">
                        <div class="layui-card-body ">
                            <form class="layui-form layui-col-space5" method="GET" action="{:url('@admin/about/index')}">
                                <div class="layui-inline layui-show-xs-block">
                                    <input class="layui-input"  autocomplete="off" placeholder="开始日" name="start" id="start">
                                </div>
                                <div class="layui-inline layui-show-xs-block">
                                    <input class="layui-input"  autocomplete="off" placeholder="截止日" name="end" id="end">
                                </div>
                                <div class="layui-inline layui-show-xs-block">
                                    <input type="text" name="title"  placeholder="标题" autocomplete="off" class="layui-input">
                                </div>
                                <div class="layui-inline layui-show-xs-block">
                                  <select name="tag" id="tag" class="layui-select">
                                    <option value="">请选择是否纯图片:</option>
                                    <option value="2">不是纯图片</option>
                                    <option value="1">是纯图片</option>
                                  </select>
                                </div>
                                <div class="layui-inline layui-show-xs-block">
                                    <button class="layui-btn"  lay-submit="" lay-filter="sreach"><i class="layui-icon">&#xe615;</i></button>
                                </div>
                            </form>
                        </div>
                        <div class="layui-card-header">
                            <button class="layui-btn layui-btn-danger" onclick="delAll()"><i class="layui-icon"></i>批量删除</button>
                            <button class="layui-btn" onclick="xadmin.open('添加用户','{:url('admin/about/create')}','','')"><i class="layui-icon"></i>添加</button>
                        </div>
                        <div class="layui-card-body ">
                            <table class="layui-table layui-form">
                              <thead>
                                <tr>
                                  <th>
                                    <input type="checkbox" name="" lay-filter="checkall"  lay-skin="primary">
                                  </th>
                                  <th>ID</th>
                                  <th>是否纯图片</th>
                                  <th>标题</th>
                                  <th>发布时间</th>
                                  <th colspan="3">操作</th>
                              </thead>
                              <tbody>
                                {volist name='list' id='data'}
                                <tr>
                                  <td>
                                    <input type="checkbox" name="id[]"  lay-skin="primary" value="{$data.id}">
                                  </td>
                                  <td>{$data.id}</td>
                                  <td><input type="radio" {eq name="data.tag" value="1"} {literal}checked{/literal} {/eq}></td>
                                  <td>{$data.title}</td>
                                  <td>{$data.releasetime}</td>
                                  <td class="cz">
                                    <a href="<?php echo url('@admin/about/read/'.$data['classid']); ?>"  title="详情">
                                      <i class="iconfont">&#xe6a4;</i>
                                    </a></td><td class="cz">
                                    <a title="编辑"  onclick="xadmin.open('编辑','{:url('@admin/about/edit/'.$data.classid)}')" href="javascript:;">
                                      <i class="layui-icon">&#xe642;</i>
                                    </a></td><td class="cz">
                                    <a title="删除" onclick="member_del(this,'{$data.id}')" href="javascript:;">
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
                                <div>
                                  {$list|raw}
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div> 
    </body>
    <script>
      layui.use(['laydate','form'], function(){
        var laydate = layui.laydate;
        var form = layui.form;
        
        //执行一个laydate实例
        laydate.render({
          elem: '#start' //指定元素
        });

        //执行一个laydate实例
        laydate.render({
          elem: '#end' //指定元素
        });

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
                url:"{:url('@admin/about/delete/')}"+id
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
              url:'{:url('@admin/about/deletes')}'
              ,data:{ids}
              ,method:'POST'
              ,dataType:'json'
              ,success:function(res){
                if(res.state == 1){
                  layer.msg('删除成功',{icon:1,time:800},function(){
                    $(".layui-form-checked").not('.header').parents('tr').remove();
                    // xadmin.father_reload();
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