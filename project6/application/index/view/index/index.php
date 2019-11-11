<?php echo md5("123456");die(); ?>
<!DOCTYPE html>
<html class="x-admin">
<head>
	<meta charset="UTF-8">
	<title>南昌为力人力资源服务有限公司-主营人力资源服务外包,代招聘,招聘流程外包（HR外包</title>
	<link rel="stylesheet" href="__CSS__/sz.css">
	<link rel="stylesheet" href="__CSS__/initia.css">
	<link rel="stylesheet" href="__CSS__/xadmin.css">
	<link rel="stylesheet" href="/static/swiper-4.5.0/dist/css/swiper.min.css">
	<script type="text/javascript" src="__JS__/jquery.min.js"></script>
	<script type="text/javascript" src="/static/layui/layui.js"></script>
	<script type="text/javascript" src="/static/swiper-4.5.0/dist/js/swiper.min.js"></script>
</head>
<body>
	<!-- 头部 -->
	<div class="sz-top">
		{$top|raw}
	</div>
	<!-- 轮播图 -->
	<div class="sz-lunbo">
		<div class="swiper-container" id="swiper1">
			<div class="swiper-wrapper">
				<div class="swiper-slide"><img src="__IMAGE__/lunbo1.png"></div>
				<div class="swiper-slide"><img src="__IMAGE__/lunbo2.jpg"></div>
				<div class="swiper-slide"><img src="__IMAGE__/lunbo3.jpg"></div>
			</div>
			<div class="swiper-pagination"></div>
		</div>
		<script>
			var myswiper = new Swiper('.swiper-container',{
				direction : 'horizontal',
				autoplay:true,
				loop:true,
				pagination: {
	      			el: '.swiper-pagination',
	    		},
	    		observer:true,
			});
			myswiper.slides.css({"z-index":1})
		</script>
	</div>
	<!-- 动态 -->
	<div>
		<div class="dongtai main1">
			<div class="dt-left">
				{$dongtai|raw}
			</div>
			<div class="dt-mid">
				{$dtmid|raw}
			</div>
				<div class="dt-right">
					<div class="main1_tab">
	                <ul>
	                    <li>
	                        <a href="http://120.203.70.4:8006/uaa/personlogin#/personLogin" target="_blank">
	                            <h2>社保查询</h2>
	                        </a>
	                    </li>
	                    <li>
	                        <a href="http://www.ncgjj.com.cn:8081/wt-web/login" target="_blank">
	                            <h2>公积金查询</h2>
	                        </a>
	                    </li>
	                   <!--  <li>
	                       <a href="http://www.ncgjj.com.cn/" target="_blank">
	                           <h2>成绩查询</h2>
	                       </a>
	                   </li> -->
	                    <li>
	                        <a href="{:url('@index/staff/index/22')}">
	                            <h2>学历提升</h2>
	                        </a>
	                    </li>
	                   <!--  <li>
	                       <a href="">
	                           <h2>招生简章</h2>
	                       </a>
	                   </li> -->
	                    <li>
	                        <a href="{:url('@index/message/index/28')}">
	                            <h2>网上报名</h2>
	                        </a>
	                    </li>
	                </ul>
	            </div>
			</div>
		</div>
	</div>
	<!-- 招聘求职 -->
	<div>
		<div class="zpqz" id="zhao_pin_qiu_zhi">   
	        <div class="main2 center">
	            <h2>招聘求职</h2>
	            <p>为力人力资源服务有限公司为企业提供最好、最专业的服务外包、招聘猎头、员工福利和<br>人事服务等相关人力资源解决方案</p>

	            <div class="main2_zpxx">
	                <div class="main2_zpxx_tit">
	                    <h3>招聘信息</h3>
	                    <a href="{:url('@index/job/index')}">更多&gt;&gt;</a>
	                </div>
	                <div class="main2_zpxx_list">
	                    <img src="__IMAGE__/zp1.jpg">
	                    {$indexqzzp|raw}
	                </div>
	            </div>

	            <div class="main2_zxqz">
	                <div class="main2_zxqz_tit">
	                    <h3>在线求职</h3>
	                </div>
	                <div class="main2_zxqz_form">
				        <form class="layui-form">
				            <ul>
				                <li class="layui-form-item">
				                    <label for="name" class="intit">姓名 : </label>
				                    <input type="text" name="names" id="names" class="intext">
				                </li>
				                <li class="layui-form-item">
				                     <label class="intit">姓名 : </label>
				                    <div class="layui-input-block">
				                        <input type="radio" name="sex" value="男" title="男" checked>
				                          <input type="radio" name="sex" value="女" title="女" >
				                    </div>
				                </li>
				                <li class="layui-form-item">
				                    <label for="tel" class="intit">手机号码 : </label>
				                    <input type="text" name="mobile" id="mobile" class="intext">
				                </li>
				                <li class="layui-form-item">
				                    <label for="will" class="intit">意向工作 : </label>
				                    <textarea type="text" name="will" id="will" class="will"></textarea>
				                </li>
				                <li class="layui-form-item">
				                    <button type="button" class="layui-btn" lay-filter="add" lay-submit="">提交</button>
				                </li>
				            </ul>
				        </form>
	                </div>
	            </div>
	            <div style="clear: both;"></div>
	        </div>
		</div>
	</div>
	<!-- 核心服务 -->
	<div id="zhaop">
		<div class="center"> 
    <!-- 核心服务 -->
        <div class="main3">
            <h2>核心服务</h2>
            <p>为力人力资源服务有限公司为企业提供最好、最专业的服务外包、招聘猎头、员工福利和<br>人事服务等相关人力资源解决方案</p>
            <ul class="main3_list">
                <li>
                    <a href="{:url('@index/company/index/10')}">
                        <img src="__IMAGE__/hxff1.jpg" alt="">
                        <div>
                            <h3>劳务派遣</h3>
                            <p>劳务派遣是企业将一些非核心员工外包给劳务公司，其特征就是劳动力的雇佣和...</p>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="{:url('@index/company/index/11')}">
                        <img src="__IMAGE__/hxff2.jpg" alt="">
                        <div>
                            <h3>服务外包</h3>
                            <p>劳务外包是企事业单位将某个岗位（特别是一些人员流动比较大、力资源服务...</p>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="{:url('@index/company/index/12')}">
                        <img src="__IMAGE__/hxff3.jpg" alt="">
                        <div>
                            <h3>代交社保</h3>
                            <p>社保代理是劳动保障事务代理中的一种代理方式，指由专业的人力资源公司，按照...</p>
                        </div>
                    </a>
                </li>
            </ul>
        </div>
        <div class="clearfix"></div>
    </div>
	</div>
	<!-- 底部 -->
	<div class="bottom">
		{$bottom|raw}
	</div>
</body>
<script>
	$(document).on("mouseover","#dongtai>li",function(){
		var index = $(this).index();
		$(this).siblings().removeClass("ac-on");
		$(this).addClass("ac-on");
		$("#dongtaili>li").removeClass("list-on").addClass("list-off");
		$("#dongtaili>li").eq(index).removeClass("list-off").addClass("list-on");
	});
</script>
<script>
    $(document).ready(function(){
    })
    layui.use(['form'],function(){
        var form = layui.form;
        form.render();
        form.on('submit(add)', function(data){
        $.ajax({
            url:"{:url('@index/message/jobmessage')}"
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
</html>