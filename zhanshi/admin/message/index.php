<?php 
	include("../../zhanshi.php");
	$arr = ["aworks","bworks","news","product"];
	$arr2 = [];
	for($i = 1; $i <= 4; $i++){
		$sql = "select name,sontype from classes where classid=0 and type=$i order by sontype asc";
		$res = sqlquery("zhanshi",$sql);
		$str = "";
		for($j = 1; $j < count($res); $j++){
			$name = $res[$j]['name'];
			$sontype = $res[$j]['sontype'];
			$str .= "<li><a href='/admin/".$arr[$i-1]."/index.php?sontype=$sontype'>$name</a></li>";
		}
		$arr2[] = $str;
	}
	$str5 = "";
	$sql = "select name,id from about order by id asc";
	$res = sqlquery("zhanshi",$sql);
	for($i = 1; $i < count($res); $i++){
		$name = $res[$i]['name'];
		$aid = $res[$i]['id'];
		$str5 .= "<li><a href='/admin/abput/index.php?id=$aid'>$name</a></li>";
	}
 ?>
<!DOCTYPE html>
<html class="x-admin-sm">
<head>
    <meta charset="UTF-8">
    <title>留言</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <link rel="stylesheet" href="/css/font.css">
    <link rel="stylesheet" href="/css/xadmin.css">
    <script type="text/javascript" src="/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="/js/xadmin.js"></script>
    <link rel="stylesheet" type="text/css" href="/css/all.css">
	<!-- <script src="/JQuery/jquery-3.4.1.js"></script> -->
</head>
<body>
	<div class="top">
		<div class="layui-main">
			<div>
				<input type="text" name="name" id="name" class="layui-input search" placeholder="请输入您要查找的关键字">
				<select name="type" id="type" class="layui-select">
					<option value="1">资讯中心</option>
					<option value="2">工程案例A</option>
					<option value="3" selected>产品搜索</option>
					<option value="4">工程案例B</option>
				</select>
				<a  id="sblayui">
					<img src="/PSD/01as/lsearch.png" >
				</a>
			</div>
			<img src="/PSD/01as/logo-left.png" alt="战石科技">
		</div>
	</div>
	<!--顶部结束-->
	<div class="topHaNav layui-block">
		<div class="layui-main">
			<li>
				<a href="/admin/index.php">
					网站首页
					<br/>
					<span>HOME</p>
				</a>
			</li>
			<li class="top-nav-li">
				<a href="/admin/about/index.php">
					关于我们
					<br/>
					<span>ABOUT US</p>
				</a>
				<ul>
					<?php echo $str5; ?>
				</ul>
			</li>
			<li class="top-nav-li">
				<a href="/admin/aworks/index.php">
					案例中心
					<br/>
					<span>CASE CENTER</p>
				</a>
				<ul>
					<?php echo $arr2[0] ?>
				</ul>
			</li>
			<li class="top-nav-li">
				<a href="/admin/bworks/index.php">
					解决方案
					<br/>
					<span>SOLUTION</p>
				</a>
				<ul>
					<?php echo $arr2[1]; ?>
				</ul>
			</li>
			<li class="top-nav-li">
				<a href="/admin/news/index.php">
					新闻资讯
					<br/>
					<span>NEWS</p>
				</a>
				<ul>
					<?php echo $arr2[2]; ?>
				</ul>
			</li>
			<li class="top-nav-li">
				<a href="/admin/product/index.php">
					产品中心
					<br/>
					<span>PRODUCT</p>
				</a>
				<ul>
					<?php echo $arr2[3]; ?>

				</ul>
			</li>
			<li>
				<a href="/admin/sysset/index.php">
					联系我们
					<br/>
					<span>CONTACT US</p>
				</a>
			</li>
			<li>
				<a href="/admin/message/index.php">
					在线留言
					<br/>
					<span>MESSAGE</span>
				</a>
			</li>
		</div>
	</div>
	<!-- banner开始 -->
	<div class="layui-main banner">
		<div class="layui-inline">
			<p>MESSAGE</p>
			<span>在线留言</span>
		</div>
	</div>
	<!-- main开始 -->
	<div class="layui-main zhuti">
		<div class="zhuti-left layui-inline">
			<h3 class="layui-block">
				M
				<p class="layui-inline">essage us<br/><span>在线留言</span></p>
			</h3>
			<div>
				<li style="background: #0860C3;"><a style="color:white;">在线留言</a></li>
			</div>
		</div>
		<div class="zhuti-right">
			<h3 class="layui-block">
				在线留言
				<span>您的位置:&nbsp;<a href="/admin/index.php">首页</a> &gt; 在线留言</span>
			</h3>
			<div class="layui-block">
				<h1>您的详细信息:</h1>
				    <div class="layui-fluid">
        <div class="layui-row">
            <form class="layui-form">
                <div class="layui-form-itme layui-inline">
                    <label for="username" class="layui-form-label">姓名:</label>
                    <div class="layui-input-inline">
                        <input type="text" id="username" name="username" class="layui-input" required autocomplete="off">
                    </div>
                </div>
                <div class="layui-form-itme layui-inline">
                    <label for="tel" class="layui-form-label">电话:</label>
                    <div class="layui-input-inline">
                        <input type="text" id="tel" name="tel" class="layui-input" lay-verify="tel" required autocomplete="off" maxlength="11">
                    </div>
                </div>
                <div class="layui-form-itme layui-inline">
                    <label for="qq" class="layui-form-label">QQ:</label>
                    <div class="layui-input-inline">
                        <input type="text" id="qq" class="layui-input" name="qq" autocomplete="off" lay-verify="qq">
                    </div>
                </div>
                <br/>
                <div class="layui-form-itme layui-inline">
                    <label for="email" class="layui-form-label">邮箱:</label>
                    <div class="layui-input-inline">
                        <input type="text" id="email" name="email" class="layui-input" lay-verify="email" autocomplete="off" style="width:300px;">
                    </div>
                </div>
                <div class="layui-form-itme layui-block">
                    <label for="title" class="layui-form-label">标题:</label>
                    <div class="layui-input-block">
                        <input type="text" id="title" name="title" required class="layui-input" required autocomplete="off">
                    </div>
                </div>
                <br/>
                <div class="layui-item layui-block">
                    <label for="content" class="layui-form-label">内容:</label>
                    <div class="layui-inline">
                        <textarea id="content" name="content" cols="30" rows="10" style="max-width: 650px;min-width: 400px;min-height:100px;max-height:600px;"></textarea>
                        <span style="position: absolute;bottom:0;right:-141px;">拖动来控制写入行数</span>
                    </div>
                </div>
                <div class="layui-form-itme">
                    <label for="" class="layui-form-label"></label>
                    <button class="layui-btn" lay-filter="tijiao" lay-submit="">发送</button>
                </div>
            </form>
        </div>
    </div>
			</div>
		</div>
	</div>
	<!-- main结束 -->
	<div class="footer layui-block">
		<div class="layui-main">
			<div><p>服务电话</p><span>15579511751</span></div>
			<div class="layui-inline">
				<li><a href="/admin/index.php" title="网站首页">网站首页</a></li>
				<li><a href="/admin/about/index.php" title="关于我们">关于我们</a></li>
				<li><a href="/admin/aworks/index.php" title="案例中心">案例中心</a></li>
				<li><a href="/admin/bworks/index.php" title="解决方案">解决方案</a></li>
				<li><a href="/admin/product/index.php" title="产品中心">产品中心</a></li>
				<li><a href="/admin/news/index.php" title="新闻资讯">新闻资讯</a></li>
				<li><a href="/admin/sysset/index.php" title="联系我们">联系我们</a></li>
				<li><a href="/admin/message/index.php" title="在线留言">在线留言</a></li>
				<br/>
				<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;版权所有 © 江西鑫磊光电科技有限公司&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;技术支持：<a href="http://www.ncyateng.com" target="_blank">南昌雅腾信息科技有限公司</a></p>
			</div>
			<img src="/PSD/01as/qchart.png" alt="关注我们">
		</div>
	</div>
	<!-- 底部结束 -->
</body>
<script>
	layui.use(['layer','jquery'],function (){
		var $ = layui.jquery;
		var layer = layui.layer;
		$('#sblayui').on('click',function(){
			var name = $("#name").val();
			if(!name){
				layer.msg('asd');return false;
			}
			var type = $("#type option:selected").val();
			switch(type){
				case '1':
					window.location.href = "/admin/news/index.php?name="+name;
					break;
				case '2':
					window.location.href = "/admin/aworks/index.php?name="+name;
					break;
				case '3':
					window.location.href = "/admin/product/index.php?name="+name;
					break;
				case '4':
					window.location.href = "/admin/bworks/index.php?name="+name;
					break;
				default:
					break;
			}
		});
	});
    layui.use(['form','layer','jquery'],function(){
        $ = layui.jquery;
        var form = layui.form;
        var layer = layui.layer;
        form.verify({
            tel:function(value){
                var number = /^\d{11}$/;
                if(!value){
                    return "没填写手机号哦!";
                }
                if(!number.test(value)){
                    return "手机号码格式不对哦!";
                }
            },
            qq:function(value){
                var number = /^\d{6,}$/;
                if(value && !number.test(value)){
                    return "QQ号码格式不对";
                }
            },
            email:function(value){
                var emailReg = /^([0-9a-z_\.-]+)@([a-z\d\.-]+)\.([a-z\.]{2,6})$/;
                if(value && !emailReg.test(value)){
                    return "邮箱格式不对哦";
                }
            }
        });
        form.on('submit(tijiao)',function(data){
        	var username = $("#username").val();
        	if(!username){
        		layer.msg('用户名不能为空',{icon:0,time:1200});return false;
        	}
            $.ajax({
                url:'/admin/message/message_add_save.php',
                method:'POST',
                data:data.field,
                dataType:'json',
                success:function(res){
                    if(res.state == 1){
                        layer.msg('已发送',{icon:1,time:1200},function(){
                            xadmin.close();
                            xadmin.father_reload();
                        });
                    }else{
                        layer.msg(res.state,{icon:2,time:1000},function(){
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
</html>