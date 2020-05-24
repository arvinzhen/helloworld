<!DOCTYPE html>
<html class="x-admin-sm">
    <head>
        <meta charset="UTF-8">
        <title>为力-后台管理</title>
        <meta name="renderer" content="webkit">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
        <link rel="stylesheet" href="__CSS__/font.css">
        <link rel="stylesheet" href="__CSS__/xadmin.css">
        <!-- <link rel="stylesheet" href="__CSS__/test.css"> -->
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
            <a href="">公司类别管理</a>
            <a>
              <cite>主页面</cite></a>
          </span>
          <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" onclick="location.reload()" title="刷新">
            <i class="layui-icon layui-icon-refresh" style="line-height:30px"></i></a>
        </div>
        <div class="layui-fluid">
            <div class="layui-row layui-col-space15">
                <div class="layui-col-md6">
                    <div>
                      <div >
                          <form class="layui-form layui-col-space2" method="GET" action="{:url('@admin/classes/index')}">
                              <div class="layui-inline layui-show-xs-block">
                                  <input type="text" name="title"  placeholder="标题" autocomplete="off" class="layui-input">
                              </div>
                              <div class="layui-inline layui-show-xs-block">
                                <select name="type" id="type" class="layui-select">
                                  <option value="">请选择类别:</option>
                                  <option value="1">公司简介</option>
                                  <option value="2">新闻资讯</option>
                                  <option value="3">企业服务</option>
                                  <option value="4">员工服务</option>
                                  <option value="5">求职招聘</option>
                                  <option value="6">联系我们</option>
                                  <option value="7">下载中心</option>
                                </select>
                              </div>
                              <div class="layui-inline layui-show-xs-block">
                                  <button class="layui-btn"  lay-submit="" lay-filter="sreach"><i class="layui-icon">&#xe615;</i></button>
                              </div>
                          </form>
                      </div>
                   </div>
                  <div id="rongqi1">
                    <input type="hidden" id="r1" value="{$data1}">
                  </div>
                </div>
                <div class="layui-col-md6">
                  <div class="layui-card">
                     <div class="layui-card-header">
                        <button class="layui-btn" onclick="xadmin.open('添加页面','{:url('admin/classes/create')}','','')"><i class="layui-icon"></i>添加</button>
                      </div>
                      <div class="layui-card-body ">
                        <div id="rongqi2">
                          <input type="hidden" id="r2" value="{$data2}">
                        </div>
                      </div>
                </div>
                </div>
            </div>
        </div>
    </body>
    <script>
      layui.use(['form','jquery','layer'], function(){
        $ = layui.jquery;
        var form = layui.form;
        $(document).ready(function(){
          $("#rongqi1").html($("#r1").val());
          $("#rongqi2").html($("#r2").val());
          form.render();
        })
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
                url:"{:url('@admin/classes/delete/')}"+id
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
              url:'{:url('@admin/classes/deletes')}'
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