<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>下载管理</title>
  {include file='public/head'}
</head>
<body>
  <div class="layui-fluid">
    <div class="layui-row layui-col-space15">
      <div class="layui-col-md12">
        <div class="layui-card">
          <div class="layui-card-body layui-form">
          <blockquote class="layui-elem-quote">
          <a href="{:url('yteng/downs/add')}" class="layui-btn"><i class="layui-icon">&#xe61f;</i>添加</a>
          <form action="" method="get" class="layui-form layui-input-inline">
                <div class="layui-input-inline">
                <input type="text" name="title" placeholder="搜索标题名称" autocomplete="off" class="layui-input" value="{:input('get.title')}">
                </div>
                <div class="layui-input-inline">
                  <?php echo $sortclass;?>
                </div>
                <button class="layui-btn"><i class="layui-icon">&#xe615;</i> 搜索</button>
          </form>
          <a href="?" class="layui-btn">查看全部</a>
          </blockquote>
            <table class="layui-table">
              <thead>
                <tr>
                  <th width="28">选择</th>
                  <th style="width: 300px;">名称</th>
                  <th>类别</th>
                  <th>下载相关</th>
                  <th >小图</th>
                  <th width="60">排序</th>
                  <th width="90">操作</th>
                </tr> 
              </thead>
              <tbody id="tbody">
                {:$info}
              </tbody>
              
            </table>
          </div>
        </div>
      </div>
      
    </div>
  </div>

 
</body>
</html>
 
  <script src="__LAYUIADMIN__/layui/layui.js"></script>
  <script>
  layui.config({
    base: '__LAYUIADMIN__/' //静态资源所在路径
  }).extend({
    ytbind:'yteng/ytbind' //加载了ytajax, so 可以直接 use
  }).use(['ytbind'],function(){
       ytbind = layui.ytbind;
       //绑定以下操作  修改排序， 单个删除， 多个删除， 删除全选， 删除反选操作
       ytbind({
                 orderurl:'{:url("yteng/downs/saveorders")}'
                ,delurl:  '{:url("yteng/downs/del")}?' + '{:getQuery()}'
              });
      
       
  });
  </script>