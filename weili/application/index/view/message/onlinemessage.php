<div class="qzzp_qz">
    <img src="__IMAGE__/zxqz.jpg" alt="">
    <div class="qzzp_qz_form">
        <form class="layui-form">
            <ul>
                <li class="layui-form-item">
                    <label for="name" class="intit">姓名 : </label>
                    <input type="text" name="names" required lay-verify="required" id="names" class="intext">
                </li>
                <li class="layui-form-item">
                     <label class="intit">性别 : </label>
                    <div class="layui-input-block">
                        <input type="radio" name="sex" value="男" title="男" checked>
                          <input type="radio" name="sex" value="女" title="女" >
                    </div>
                </li>
                <li class="layui-form-item">
                    <label for="tel" class="intit">手机号码 : </label>
                    <input type="text" name="mobile" required lay-verify="phone" id="mobile" class="intext">
                </li>
                <li class="layui-form-item">
                    <label for="will" class="intit">内容 : </label>
                    <textarea type="text" name="content" id="content" class="will"></textarea>
                </li>
                <li class="layui-form-item">
                    <button type="button" class="layui-btn" lay-filter="add" lay-submit="">提交</button>
                </li>
            </ul>
        </form>
    </div>
    <div class="clearfix"></div>
</div>
<script>
    $(document).ready(function(){
    })
    layui.use(['form'],function(){
        var form = layui.form;
        form.render();
        form.on('submit(add)', function(data){
        $.ajax({
            url:"{:url('@index/message/liumessage')}"
            ,data:data.field
            ,method:'GET'
            ,dataType:'json'
            ,success:function(res){
                if(res.state == 1){
                    layer.msg("发送成功",{icon:1,time:1200});
                }else{
                    layer.msg(res.state,{icon:3,time:800});
                }
            }
        });
        return false;
    });

    });
</script>