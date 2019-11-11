

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>用户管理</title>
  {include file='public/head'}
  <style type="text/css">
    .orders{height: 26px;}
  </style>
</head>
<body>

  <div class="layui-fluid">
    <div class="layui-row layui-col-space15">
      <div class="layui-col-md12">
        <div class="layui-card">
         <!--  <div class="layui-card-header">后台管理员</div> -->
          <div class="layui-card-body layui-form">
            <table class="layui-table">
              <colgroup>
                <col width="55">
                <col>
                <col>
                <col>
              </colgroup>
              <thead>
                <tr>
                  <th colspan="6">
                      <a href="javascript:;" class="layui-btn layui-btn-xs add" _id ="0"><i class="layui-icon">&#xe61f;</i>添加</a>
                      <!-- <button class="layui-btn layui-btn-xs layui-btn-normal" id ="0"><i class="layui-icon">&#xe605;</i>全选</button>
                      <button class="layui-btn layui-btn-xs layui-btn-normal" id ="0"><i class="layui-icon">&#xe605;</i>反选</button>
                      <button class="layui-btn layui-btn-xs layui-btn-danger" id ="0"><i class="layui-icon">&#xe640;</i>删除</button> -->
                  </th>
                </tr> 
                <tr>
                  <th>选择</th>
                  <th>用户名</th>
                  <th>真实姓名</th>
                  <th>性别</th>
                  <th>添加时间</th>
                  <th>操作</th>
                </tr> 
              </thead>
              <tbody id="tbody">
               {volist name="list" id="row"}
                <tr>
                    <td><input type="checkbox" name="agreement" value="{$row.id}" lay-skin="primary"></td>
                    <td>{$row.username}</td>
                    <td>{$row.realname}</td>
                    <td>{$row.sex}</td>
                    <td>{:date("Y-m-d H:i:s",$row.addtime)}</td>
                    <td>
                      <a href="javascript:;" _id ="{$row['id']}" class="layui-btn layui-btn-xs edit">修改</a>
                      <a href="javascript:;" _id ="{$row['id']}" class="layui-btn layui-btn-danger layui-btn-xs del">删除</a>
                    </td>
                </tr>
               {/volist}
              </tbody>
            </table>
          </div>
        </div>
      </div>
      
    </div>
  </div>

 
</body>
</html>
 <div id="save" class="layui-fluid" style="display: none;">
         <form class="layui-form">
            <div class="layui-form-item">
                <label class="layui-form-label">用户名</label>
                <div class="layui-input-inline">
                    <input type="text" id="username" name="username" maxlength="20" autocomplete="off" class="layui-input">
                </div>
                <label class="layui-form-label">用户密码</label>
                <div class="layui-input-inline">
                      <input type="text" id="userpwd" name="userpwd" maxlength="20" autocomplete="off" class="layui-input">
              </div>
            </div>

            <div class="layui-form-item">
                  <label class="layui-form-label">真实姓名</label>
                  <div class="layui-input-inline">
                    <input type="text" id="realname" name="realname" maxlength="20" autocomplete="off" class="layui-input">
                  </div>
                  <label class="layui-form-label">性别</label>
                  <div class="layui-input-inline">
                    <input type="radio" name="sex" value="男" title="男">
                    <input type="radio" name="sex" value="女" title="女">
                  </div>
            </div>
            <div class="layui-form-item">
              <label class="layui-form-label">权限选择</label>
              <div class="layui-input-block">
                <div>
                   <button type="button" class="layui-btn layui-btn-xs layui-btn-normal" id="selectAll"><i class="layui-icon">&#xe605;</i>全选</button>
                    <button type="button" class="layui-btn layui-btn-xs layui-btn-normal" id="selectOther"><i class="layui-icon">&#xe605;</i>反选</button>
                </div>
                  <table id="purview_table">
                  </table>
                </div>
            </div>
            <style type="text/css">
               #purview_table{width: 600px;}
               #purview_table tr{border-bottom: 1px dashed #ccc; vertical-align: center;} 
               #purview_table td{padding-bottom: 2px; } 
                .layui-form-checkbox span{font-size: 12px;}
              .layui-form-checkbox[lay-skin=primary] i {width: 14px;height: 14px;line-height: 14px;} 
              </style>
             <div class="layui-form-item" style="padding-left: 80px;">
                  <input type="hidden" name="id" id="id" value="">
                  <button class="layui-btn" lay-filter="go">立即提交</button>
                  <button type="reset" class="layui-btn layui-btn-primary">重置</button>
              </div>
        </form>
  </div>
  <script src="__LAYUIADMIN__/layui/layui.js"></script>
  <script>
  layui.config({
    base: '__LAYUIADMIN__/' //静态资源所在路径
  }).extend({
    index: 'lib/index' //主入口模块
    ,ytajax:'yteng/ytajax'//定义的 ajax 模块
  }).use(['ytajax','index','form','layer'],function(){
       var $ = layui.$
          ,form = layui.form 
          ,layer = layui.layer
          ,ytajax = layui.ytajax
          ;
       //编辑信息
       $(document).on("click",".edit,.add",function(){
          //初始化信息设置
           var cls = $(this).attr("class");
           var pos = cls.indexOf("add"); //判断是添加， 还是 编辑

           if(pos > 0){
                var data  = {id:$(this).attr("_id"),action:"add"};
                var title = "添加管理员";
                $("button[type='reset']").show();
                $(".userpwd").show();
           }
           else{
                var data  = {id:$(this).attr("_id"),action:"edit"};
                var title = "修改管理员";
                $("button[type='reset']").hide();
                $(".userpwd").hide();
           }
           $.ajax({
                 type:"post",
                 data:data,
                 url :'{:url("yteng/administrator/edit")}',
                 dataType:'json',
                 async:true,
                 success:function(res){
                     if(pos<0){
                        //编辑初始值 begin
                        $("#username").val(res.username);
                        $("#realname").val(res.realname);
                        $("#id").val(res.id);
                        $("input[value="+(res.sex)+"]").prop("checked",true);
                     }
                     else{
                         $("#username").val('');
                         $("#realname").val('');
                         $("#userpwd").val('');
                         $("#id").val('');
                     }
                     $("#purview_table").html(res.purview);
                      
                      form.render();
                      //弹出开始
                        //初始化信息结束
                         index_alert=layer.open({
                          title:title,
                          type: 1,
                          skin: 'layui-layer-rim',
                          area: ['800px'],
                          content: $('#save')
                        });
                      //弹出结束
                 }
              })
           
       })
       //编辑信息提交
       form.on('submit(go)', function(data){
          alert("sdf");
          return false;
           /* console.log(data);
            var id       = $("#id");
            var username = $("#username").val();
            return false;*/
           /* if(!sortname){
                layer.msg("类别名称不能为空",{icon:2,time:1000},function(){
                    $("#sortname").focus();
                });
            }
            var orders   = $("#orders").val();
            if(!orders){
                layer.msg("请填写排序",{icon:2,time:1000},function(){
                    $("#orders").focus();
                });
            }
            
            var data = $("form").serializeArray();
            $.ajax({
                 type:"post",
                 data:data,
                 url :'{:url("yteng/sort/save")}',
                 dataType:'json',
                 success:function(res){
                     if(res.status){
                         layer.msg(res.mes,{icon:1,time:1000},function(){
                           $("#tbody").html(res.info);
                           layer.close(index_alert);
                         });
                         return false;
                     }
                     else{
                        layer.msg(res.mes,{icon:2,time:2000});return false;
                     }
                 }
              })*/
             //添加，修改 结束
            //layer.close(index_alert);
       })
       //修改类别排序
       $(document).on("blur",".orders",function(){
           var data = {id:$(this).attr("_pid"),orders:$(this).val()};
           ytajax({data:data,url:'{:url("yteng/sort/saveorders")}'});
       })
       //删除类别 begin
       $(document).on("click",".del",function(){
            var data = {id:$(this).attr("_id")};
            var _this = $(this);
            layer.confirm('你真的忍心要删除我吗?亲!', function(index){
              $.ajax({
                 type:"post",
                 data:data,
                 url :'{:url("yteng/administrator/del")}',
                 dataType:'json',
                 success:function(res){
                     if(res.status){
                         layer.msg(res.mes,{icon:1,time:1000});
                         _this.parent().parent().remove();
                         return false;
                     }
                     else{
                        layer.msg(res.mes,{icon:2,time:2000});return false;
                     }
                 }
              })
              //layer.close(index);
            }); 
       })
       //删除类别 end
       //权限全部选择 begin
          //全选
          $("#selectAll").click(function(event) {
            $('input[name="purview[]"]').prop("checked",true);
            form.render('checkbox');
          });
          //反选
          $("#selectOther").click(function(event) {
             $('input[name="purview[]"]').each(function(){
                  $(this).prop("checked",!$(this).prop("checked"));
                })
            form.render('checkbox');
          });
          //选父类时, 子类一样的选择
          form.on('checkbox(pcheck)', function(data){
                    var ischecked = data.elem.checked;
                  var child = $(data.elem).parent('td').siblings().find('input');
                    child.each(function(index, item){
                         item.checked = ischecked;
                      });
                  form.render('checkbox');
          });
          //子类没有选择时, 父类也取消选择
          form.on('checkbox(ccheck)', function(data){
                    var parent = $(data.elem).parent('td').siblings().children('input[type="checkbox"]');
                    var child = $(data.elem).parents('td').children('input');
                    var ischecked = false;
                      child.each(function(index, item){
                         if(item.checked == true){ischecked = true;} //如果子项有一项为true, 那么父类就会选中
                      });
                      if(ischecked == false){parent.prop("checked",false);}
                      else{parent.prop("checked",true);}
                  form.render('checkbox');
          });
          //权限全部选择 end
  });
  </script>