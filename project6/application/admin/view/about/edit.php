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
        <link rel="stylesheet" href="__CSS__/jianjie.css">
        <script type="text/javascript" src="__LIB__/layui/layui.js" charset="utf-8"></script>
        <script type="text/javascript" src="__JS__/xadmin.js"></script>
        <script type="text/javascript" src="__JS__/jquery.min.js"></script>
        <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
        <!--[if lt IE 9]>
            <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
            <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <body>
        <div class="layui-fluid">
            <div class="layui-row">
              <!-- enctype="multipart/form-data" -->
                <form class="layui-form">
                  <div class="layui-form-item">
                      <label for="title" class="layui-form-label">
                          <span class="x-red">*</span>大标题
                      </label>
                      <div class="layui-input-inline">
                          <input type="text" id="title" name="title" required="" lay-verify="required"
                          autocomplete="off" class="layui-input" value="{$data.title}">
                      </div>
                      <div class="layui-form-mid layui-word-aux">
                          <span class="x-red">*</span>将会成为"<span class="x-red">公司简介</span>"下面的子标题
                      </div>
                  </div>
                  <div class="layui-form-item">
                      <label for="phone" class="layui-form-label">
                          <span class="x-red">*</span>是否纯图片
                      </label>
                      <div class="layui-input-block" id="xianshi">
                <input type="radio" name="hasimg" lay-filter="hasimg" value="1" title="是">
                <input type="radio" name="hasimg" lay-filter="hasimg" value="0" title="否" <?php if($data['pz']){echo 'disabled';} ?> >
            </div>
                <div class="layui-form-mid layui-word-aux">
                    <span class="x-red">*</span>纯图片不能改为富文本,富文本可以变为纯图片
                </div>
                  </div>
                  <div class="layui-form-item" id="bucun">
                      <label class="layui-form-label">
                          <span class="x-red">*</span>直接编辑<br/>图片+文本模式
                      </label>
                      <div class="layui-input-block">
                        <input type="hidden" disabled id="yc" value="{$data[0]['content']}">
                        <script id="uecontainer" name="content" type="text/plain">
                          
                        </script>
                        <script type="text/javascript" src="__LIB__\utf8-php\ueditor.config.js"></script>
                        <script type="text/javascript" src="__LIB__\utf8-php\ueditor.all.js"></script>
                        <script>
                          var myue = UE.getEditor("uecontainer");
                          myue.ready(function(){
                            myue.setContent($("#yc").val());
                          });
                        </script>
                      </div>
                     <div class="layui-form-item">
                        <label for="L_repass" class="layui-form-label">
                        </label>
                        <button id="add"  class="layui-btn" lay-filter="add" lay-submit="">
                            增加
                        </button>
                    </div>
                  </div>
                  <div class="layui-form-item" id="cun">
                    <label class="layui-form-label">
                      <span class="x-red">*</span>上传图片<br/>纯图片
                    </label>
                    <div class="layui-input-block">
                      <!-- 上传图片 -->
                      <div class="layui-input-inline">
                        <input type="file" id="testfile" name="imglist" multiple accept="image/*">
                      </div>
            <br/>
            <span>预览</span>
            <div id="yulan" style="border:1px solid blue">
              </ul>
              <?php if($data['pz']){for($i = 0; $i < count($data) - 3; $i++) {
              echo "<li><img src=".$data[$i]['imglist']." class='xy min'><p>发布时间".$data[$i]['releasetime']."</p><p><a href='javascript:;' onclick=\"del(this,".$data[$i]['id'].")\">删除</a></p><li>";
        }} ?>
              </ul>
            </div>
     </form>
     <div class="clearfix"></div>
     <br/>
     <br/>
     <br/>
     <br/>
    <div id="huala" class="layui-form-item">
        <label for="L_repass" class="layui-form-label">
        </label>
        <button id="tijiao"  class="layui-btn">
            提交
        </button>
    </div>
  </div>
</div>
        <script>
          $(document).on('click', '.xy', function () {
            $(this).removeClass("xy");
            $(this).toggleClass("max");
            $(this).parents("ul.gezi").find("img.xy").removeClass("max").addClass("min");
            $(this).addClass("xy");
          });
        </script>
        <script>
          $(document).ready(function(){
            if(<?php if($data['pz']){echo 1;}else{echo 0;} ?>){
              $('input[name=hasimg]')[0].setAttribute('checked',true);
              $("#cun").addClass('yes');
              $('#bucun').addClass('no');
              $('#huala').addClass('yes');
            }else{
              $('input[name=hasimg]')[1].setAttribute('checked',true);
              $("#cun").addClass('no');
              $('#bucun').addClass('yes');
              $('#huala').addClass('no');
            }

          });
          var ceshi = $("#testfile")[0];
            var formData = new FormData();
            var j = 0;
            // var imglist = [];
            ceshi.onchange = function(index){
              for(var i = 0; i < ceshi.files.length; i++){
                formData.append(j,ceshi.files[i]);
                yulan(ceshi.files[i]);
                j++;
              }
              formData.append('length',j);
            };
            $("#tijiao").click(function(){
              //test
              var title = $("#title").val();
              formData.append('title',title);
              $.ajax({
                url: "{:url('@admin/about/update/'.$data['classid'])}"
                ,method:'POST'
                ,data:formData
                ,dataType:'json'
                ,contentType:false
                ,processData:false
                ,success:function(res){
                  if(res.state == 1){
                    layer.msg("上传成功",{icon:1,time:800},function(){
                      xadmin.close();
                      xadmin.father_reload();
                    });
                  }else{
                    layer.msg(res.state,{icon:2,time:1200},function(){
                      xadmin.close();
                    });
                  }
                }
              });

              return false;
            });
        </script>
        <script>
          var allData = [];
          layui.use(['form', 'layer','element'],
            function() {
                $ = layui.jquery;
                var form = layui.form,
                element = layui.element,
                layer = layui.layer;

                //不同单选不同显示
                form.on('radio(hasimg)',function(data){
                  var hasimg = data.value;
                  if(this.value == 0){
                $("#bucun").removeClass("no").addClass("yes");
                $("#cun").removeClass("yes").addClass("no");
                $("#huala").removeClass("yes").addClass("no");
                  }else{
                  $("#cun").removeClass("no").addClass("yes");
                  $("#bucun").removeClass("yes").addClass("no");
                  $("#huala").removeClass("no").addClass("yes");
                  }
                });
                //自定义验证规则
                form.verify({
                });

                //
                

                //监听提交
                form.on('submit(add)',
                function(data) {
                  delete(data.field.imglist);
                  data.field.content = myue.getContent();
                    //发异步，把数据提交给php
                    $.ajax({
                      url:"{:url('@admin/about/editsave/'.$data['classid'])}"
                      ,method:'POST'
                      ,data:data.field
                      ,dataType:'json'
                      ,success:function(res){
                        if(res.state == 1){
                          layer.msg("添加成功",{icon:1,time:800},function(){
                            xadmin.close();
                              xadmin.father_reload();
                          });
                        }else{
                          layer.msg(res.state,{icon:2,time:1200},function(){
                            xadmin.close();
                              xadmin.father_reload();
                          });
                        }
                      }
                    });
                    return false;
                });

            });
        </script>
        <script>
          var rongqi = document.querySelector("#yulan");
          function yulan(obj){
            var fr = new FileReader();
            fr.readAsDataURL(obj);
            fr.onload = function (){
              var testimg = document.createElement('img');
              testimg.src = this.result;
              testimg.className = "xy min";
              rongqi.appendChild(testimg);
            }
          }
        </script>
        <script>
          function del(obj,id){
            $.ajax({
              url:"{:url('@admin/about/delete/')}"+id
              ,method:'GET'
              ,data:{}
              ,dataType:'json'
              ,success:function(res){
                if(res.state == 1){
                  layer.msg('已删除!',{icon:1,time:1000},function(){
                    $(obj).parents('li').addClass('no');
                  });
                }else{
                  layer.msg(res.state,{icon:2,time:1200},function(){
                    xadmin.father_reload();
                  })
                }
              }
            });
              return false;
          }
      </script>
    </body>

</html>
