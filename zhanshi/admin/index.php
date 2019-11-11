<?php 
	include("../zhanshi.php");
	//加载导航条
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
	//加载公司简介
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
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
    <link rel="stylesheet" href="/layui/css/layui.css">
    <link rel="stylesheet" type="text/css" href="/css/all.css">
    <link rel="stylesheet" type="text/css" href="/css/zong.css">
    <link rel="stylesheet" type="text/css" href="/swiper-4.5.0/dist/css/swiper.css">
	<script src="/layui/layui.js" charset="utf-8"></script>
	<script src="/JQuery/jquery-3.4.1.js"></script>
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
					<?php echo $arr2[0]; ?>
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
	<!-- 轮播图开始 -->
	<div class="layui-main lunbo">
		<div class="swiper-container">
			<div class="swiper-wrapper">
				<div class="swiper-slide"><div class="swiper-zoom-container"><img src="/PSD/01as/lunbo1.png" alt=""></div></div>
				<div class="swiper-slide"><div class="swiper-zoom-container"><img src="/PSD/01as/lunbo2.png" alt=""></div></div>
				<div class="swiper-slide"><div class="swiper-zoom-container"><img src="/PSD/01as/lunbo3.png" alt=""></div></div>
			</div>
				<div class="swiper-button-prev"></div>
				<div class="swiper-button-next"></div>
				<div class="swiper-pagination"></div>
		</div>
		<script src="/swiper-4.5.0/dist/js/swiper.js"></script>
		<script>
			var mys = new Swiper(".swiper-container",{
				zoom:true,
				direction:'horizontal',
				loop:true,
				autoplay:true,
				navigation:{
					nextEl:'.swiper-button-next',
					prevEl:'.swiper-button-prev'
				},
				pagination:{
					el:'.swiper-pagination'
				}
			});
		</script>
		<div id="test">
		</div>
	</div>
	<!-- 轮播图结束 -->
	<div class="layui-main solution">
		<div class="layui-inline">
			<p>解决方案<span>MORE+</span></p>
			<ul>
				<li>交通监控LED高清显示方案</li>
				<li>电力行业LED高清显示方案</li>
				<li>广电行业LED高清显示方案</li>
				<li>安防监控LED高清显示方案</li>
				<li>水利监控LED高清显示方案</li>
				<li>城市应急LED高清显示方案</li>
				<li>军事应用LED高清显示方案</li>
				<li>银行金融LED高清显示方案</li>
			</ul>
		</div>
		<div class="layui-inline partitle">
			<div class="layui-block"><p class="layui-inline ptitle">ABOUT US <span class="ltitle">关于战石</span></p><span class="more">MORE+</span></div>
			<div class="layui-block" style="margin-top:20px">
				<img src="/PSD/01as/about.png">
				<div class="layui-inline" style="width:300px">
					<p style="padding:12px;line-height:18px;text-indent: 2rem;">    江西战石光电科技有限公司成立于2004年，是一家专业从事LED产品应用研发、设计、生产、销售和服务于一体的产品服务商，同时也是目前国内最大的LED产品应用系统解决方案服务商之一。公司自成立以来，务商，同时也是目前国内最大的LED产品应用系统解决方案服务商之一。公司自的技术平台背景，建设有光电研究 ......</p>
				</div>
			</div>
		</div>
		<div class="layui-inline partitle">
			<div class="layui-block">
				<p class="layui-inline ptitle">CONTACT US<span class="ltitle">联系我们</span></p>
			</div>
			<div class="layui-block" style="background:url('/PSD/01as/contact2.png') no-repeat">
				<!-- <img src="/PSD/01as/contact2.png"> -->
				<p >
					全国服务电话<br/>4008-399-227
				</p>
			</div>
			<div class="layui-block">
				<p>
					业务经理：15601705666<br/>
					技术支持：13601652664<br/>
					联系邮箱：88085905@qq.com<br/>
					地址：南昌市经济技术开发区玉屏东大街299号清华科技园（江西）内华江大厦B楼301邮编：330006
				</p>
			</div>
		</div>
	</div>
	<!-- solution结束 -->
	<div class="layui-main case">
		<div class="layui-block partitle">
			<div class="layui-block">
				<p class="ptitle layui-inline">CASE CENTER<span class="ltitle">案例中心</span></p><span class="more">MORE+</span>
			</div>
		</div>
		<div class="layui-inline"><img src="/PSD/01as/case1.png"><p>湖北高速应急指挥中心LED显示屏</p></div>
		<div class="layui-inline"><img src="/PSD/01as/case2.png"><p>湖北高速应急指挥中心LED显示屏</p></div>
		<div class="layui-inline"><img src="/PSD/01as/case6.png"><p>湖北高速应急指挥中心LED显示屏</p></div>
		<div class="layui-inline"><img src="/PSD/01as/case4.png"><p>湖北高速应急指挥中心LED显示屏</p></div>
	</div>
	<!-- CASE结束 -->
	<div class="layui-main opart">
		<div class="layui-inline partitle">
			<div class="layui-block"><p class="layui-inline ptitle">NEWS<span class="ltitle">公司新闻</span></p><span class="more">MORE+</span></div>
			<div class="layui-block">
				<li>• 江西战石光电，关爱员工免费体检送健康</li>
				<li>• 战石高清小间距亮相中国国际光电</li>
				<li>• 江西战石光电科技有限公司网站正式上线</li>
				<li>• 中国LED显示屏企业的竞争市场在</li>
				<li>• 南昌50%以上道路照明实行合同能</li>
				<li>• 战石科技，关爱员工免费体检送健康</li>
			</div>
		</div>
		<div class="layui-inline partitle">
			<div class="layui-block"><p class="layui-inline ptitle">INDUSTRY<span class="ltitle">行业动态</span></p><span class="more">MORE+</span></div>
			<div class="layui-block">
				<li>• 江西战石光电，关爱员工免费体检送健康</li>
				<li>• 战石高清小间距亮相中国国际光电</li>
				<li>• 江西战石光电科技有限公司网站正式上线</li>
				<li>• 中国LED显示屏企业的竞争市场在</li>
				<li>• 南昌50%以上道路照明实行合同能</li>
				<li>• 战石科技，关爱员工免费体检送健康</li>
			</div>
		</div>
		<div class="layui-inline partitle">
			<div class="layui-block"><p class="layui-inline ptitle">PRODUCT<span class="ltitle">产品知识</span></p><span class="more">MORE+</span></div>
			<div class="layui-block">
				<li>• 江西战石光电，关爱员工免费体检送健康</li>
				<li>• 战石高清小间距亮相中国国际光电</li>
				<li>• 江西战石光电科技有限公司网站正式上线</li>
				<li>• 中国LED显示屏企业的竞争市场在</li>
				<li>• 南昌50%以上道路照明实行合同能</li>
				<li>• 战石科技，关爱员工免费体检送健康</li>
			</div>
		</div>
	</div>
	<!-- 导航条结束 -->
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
		var $ = layui.$;
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
</script>
</html>