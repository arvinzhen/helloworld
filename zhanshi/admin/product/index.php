<?php 
	include("../../zhanshi.php");
	//加载导航条
	$arr = ["news","aworks","product","bworks"];
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
		$str5 .= "<li><a href='/admin/about/index.php?id=$aid'>$name</a></li>";
	}
	//加载主体
	$strzhuti = "";$xsName = "产品中心";$jsstr = "";
	if(!isset($_GET['classid'])){//global
		$search = "";$fyclass = "";$limit = "";$arr3 = [];$strfenye = "";//iniliz
		$sql = "select count(*) as t from classes where type=3 and classid>0 ";
		$name = isset($_GET['name'])?$_GET['name']:'';
		if($name){
			$search .= "and name like '%$name%' ";
			$fyclass = "name=$name";
		}
		$sontype = isset($_GET['sontype'])?$_GET['sontype']:'';
		if($sontype){
			$search .= "and sontype='$sontype' ";
			$fyclass = "sontype=$sontype";
			$sql3 = "select name from classes where type=3 and calssid=0 and sontype='$sontype'";
			$xsName = sqlquery("zhanshi",$sql3,false)['name'];
		}
		$sql .= $search;
		$allnum = sqlquery("zhanshi",$sql,false)['t'];
		if($allnum > 12){
			$curPage = isset($_GET['page'])?$_GET['page']-1:0;
			$strfenye .= "<div class='layui fenye'>";
			$allpage = ceil($allnum / 12);
			$limit = fenye($curPage,12);
			if($curPage > 0){//上一页
				$i = $curPage;
				$strfenye .= "<a href='/admin/product/index.php?".$fyclass."&page=$i'>上一页</a>";
			}
			for ($i = 1; $i <= $allpage; $i++) {
				if($i - 1 != $curPage){
					$strfenye .= "<a href='/admin/product/index.php?".$fyclass."&page=$i'>$i</a>";
				}else{
					$strfenye .= "<a>$i</a>";
				}
			}
			if($curPage < $allpage - 1){//下一页
				$i = $curPage + 2;
				$strfenye .= "<a href='/admin/product/index.php?".$fyclass."&page=$i'>下一页</a>";
			}
		}
		$sql = "select classid from classes where type=3 and classid>0 ".$search." order by id asc ".$limit;
		$res = sqlquery("zhanshi",$sql);
		if($res){
			foreach ($res as $value) {
				$arr3[] = $value['classid'];
			}
		}
		if(!empty($arr3)){
			$classids = implode(",",$arr3);
			$sql = "select name,image from product where classid in($classids) order by id asc";
			$res = sqlquery("zhanshi",$sql);
			if($res){
				for ($i = 0; $i < count($res); $i++) {
					$classid = $arr3[$i];
					$title = $res[$i]['name'];
					$image = $res[$i]['image'];
					$strzhuti .= "<div class='layui-inline pro-img'><img src='/images/".$image."'><p><a href='/admin/product/index.php?classid=$classid'>$title</a></p></div>";
				}
				$strzhuti .= $strfenye;
			}
		}
	}else{
		$classid = $_GET['classid'];
		$sql = "select * from product where classid='$classid'";
		$res = sqlquery("zhanshi",$sql,false);
		if($res){
			$title = $res['name'];
			$content = $res['content'];
			$image = $res['image'];
			$visit = $res['visit'];
			$jsstr = "tag = true;visit = $visit;var classid = $classid;";
			$regT = date("Y-m-d H:i:s",$res['releasetime']);
			$strzhuti .= "<h1>标题:$title</h1>";
			$strzhuti .= "<p>浏览量:$visit</p>";
			$strzhuti .= "<p>发布时间:$regT</p>";
			$strzhuti .= "<div class='layui-block'><img src='/images/".$image."'></div>";
			$strzhuti .= "<div class='layui-block'>$content</div>";
		}
	}
 ?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
    <link rel="stylesheet" href="/layui/css/layui.css">
    <link rel="stylesheet" type="text/css" href="/css/all.css">
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
					<?php echo $arr2[1] ?>
				</ul>
			</li>
			<li class="top-nav-li">
				<a href="/admin/bworks/index.php">
					解决方案
					<br/>
					<span>SOLUTION</p>
				</a>
				<ul>
					<?php echo $arr2[3]; ?>
				</ul>
			</li>
			<li class="top-nav-li">
				<a href="/admin/news/index.php">
					新闻资讯
					<br/>
					<span>NEWS</p>
				</a>
				<ul>
					<?php echo $arr2[0]; ?>
				</ul>
			</li>
			<li class="top-nav-li">
				<a href="/admin/product/index.php">
					产品中心
					<br/>
					<span>PRODUCT</p>
				</a>
				<ul>
					<?php echo $arr2[2]; ?>

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
			<p>PRODUCT</p>
			<span>产品中心</span>
		</div>
	</div>
	<!-- main开始 -->
	<div class="layui-main zhuti">
		<div class="zhuti-left layui-inline">
			<h3 class="layui-block">
				P
				<p class="layui-inline">roduct<br/><span>产品中心</span></p>
			</h3>
			<div>
				<?php echo $arr2[2]; ?>
			</div>
		</div>
		<div class="zhuti-right">
			<h3 class="layui-block">
				<?php echo $xsName; ?>
				<span>您的位置:&nbsp;<a href="/admin/index.php">首页</a> &gt; <?php echo $xsName; ?></span>
			</h3>
			<div class="layui-block">
				<?php echo $strzhuti; ?>
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
	var visit,tag = false;
	<?php echo $jsstr; ?>
	if(tag){
		setTimeout(function(){
			$.ajax({
				url:'/admin/product/product_add_save.php',
				data:{'visit':visit,'classid':classid},
				method:'POST'
			});
		},1);
	}
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
</script>
</html>