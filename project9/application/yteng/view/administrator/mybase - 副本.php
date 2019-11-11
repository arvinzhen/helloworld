

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
    <div class="layui-card">
      <!-- <div class="layui-card-header">基本资料</div> -->
      <div class="layui-card-body" style="padding: 15px;">
        <form class="layui-form">
         <div class="layui-form-item">
                <label class="layui-form-label">用户名</label>
                <div class="layui-input-inline">
                    <input type="text" id="username" name="username" value="{$row.username}" disabled="" maxlength="20" autocomplete="off" class="layui-input">
                </div>
            </div>

            <div class="layui-form-item">
                  <label class="layui-form-label">真实姓名</label>
                  <div class="layui-input-inline">
                    <input type="text" id="realname" name="realname" value="{$row.realname}" maxlength="20" autocomplete="off" class="layui-input">
                  </div>
                  <label class="layui-form-label">性别</label>
                  <div class="layui-input-inline">
                    <input type="radio" name="sex" value="男" title="男" {eq name="row.sex" value="男"}checked{/eq}>
                    <input type="radio" name="sex" value="女" title="女" {eq name="row.sex" value="女"}checked{/eq}>

                  </div>
            </div>
            
            <!-- <div class="layui-form-item">
              <label class="layui-form-label">权限选择</label>
              <div class="layui-input-block">
                <div>
                   <button type="button" class="layui-btn layui-btn-xs layui-btn-normal" id="selectAll"><i class="layui-icon">&#xe605;</i>全选</button>
                    <button type="button" class="layui-btn layui-btn-xs layui-btn-normal" id="selectOther"><i class="layui-icon">&#xe605;</i>反选</button>
                </div>
                  <table id="purview_table">
                         <?php //echo $row["purview"]; ?>
                  </table>
                </div>
            </div>
            <style type="text/css">
               #purview_table{width: 600px;}
               #purview_table tr{border-bottom: 1px dashed #ccc; vertical-align: center;} 
               #purview_table td{padding-bottom: 2px; } 
                .layui-form-checkbox span{font-size: 12px;}
              .layui-form-checkbox[lay-skin=primary] i {width: 14px;height: 14px;line-height: 14px;} 
              </style> -->
             <div class="layui-form-item" style="padding-left: 80px;">
                  <input type="hidden" name="id" id="id" value="{$row.id}">
                  <button type="button" class="layui-btn" lay-submit lay-filter="go">立即提交</button>
                  <!-- <button type="reset" class="layui-btn layui-btn-primary">重置</button> -->
            </div>
        </form>
      </div>
    </div>
  </div>


 
</body>
</html>
 <div id="save" class="layui-fluid" style="display: none; overflow-y:scroll;">
        
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
      
       //编辑信息提交
       form.on('submit(go)', function(data){
            if(!data.field.username){
                layer.msg("用户名不能为空",{icon:2,time:1000},function(){$("#username").focus();});
                return false;
            }
            var data = $("form").serializeArray();
           
            $.ajax({
                 type:"post",
                 data:data,
                 url :'{:url("yteng/administrator/mybase_save")}',
                 dataType:'json',
                 success:function(res){
                     if(res.status){
                         layer.msg(res.mes,{icon:1,time:1000},function(){
                           layer.close(index_alert);
                         });
                         return false;
                     }
                     else{
                        layer.msg(res.mes,{icon:2,time:2000});return false;
                     }
                 }
              })
             //添加，修改 结束
            //layer.close(index_alert);
       })
       
       //权限全部选择 begin
          //全选
          $(document).on("click","#selectAll",function(){
            $('input[name="purview[]"]').prop("checked",true);
            form.render('checkbox');
          });
          //反选
          $(document).on("click","#selectOther",function(){
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