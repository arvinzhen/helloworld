<?php 
	include("../../zhanshi.php");
	//top-nav
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
	//加载当前页的主体内容
	$strzhuti = "";$jsstr = "";$xsName = "解决方案";
	$curPage = isset($_GET['page'])?$_GET['page']-1:0;
	if(!isset($_GET['classid'])){//显示概括
		$strfenye = "";$fyclass = "";
		$search = "";$limit = "";$sql = "select classid from classes where type=4 and classid>0 ";//iniliz
		$name = isset($_GET['name'])?$_GET['name']:'';
		if($name){
			$search .= "and name like '%$name%' ";
			$fyclass = "name=$name";
		}
		$sontype = isset($_GET['sontype'])?$_GET['sontype']:'';
		if($sontype){
			$search .= "and sontype='$sontype' ";
			$fyclass = "sontype=$sontype";
			$sql3 = "select name from classes where type=4 and classid=0 and sontype='$sontype'";
			$xsName = sqlquery("zhanshi",$sql3,false)['name'];
		}
		$limit = fenye($curPage,4);
		$sql .= $search;
		$res = sqlquery("zhanshi",$sql);
		if($res){//有内容
			$arr3 = [];//承载当前的所有的classid
			if(count($res) > 4){//fenye
				$nums = ceil(count($res) / 4);
				$strfenye = "<div class='layui-inline fenye'>";
				//1.order page   2.css style add after
				if($curPage > 0){
					$i = $curPage;
					$strfenye .= "<a href='/admin/bworks/index.php?".$fyclass."&page=$i'>上一页</a>";
				}
				for($i = 1; $i <= $nums; $i++){
					if($i - 1 == $curPage){
						$strfenye .= "<a style='color:blue;'>$i</a>";
					}else{
						$strfenye .= "<a href='/admin/bworks/index.php?".$fyclass."&page=$i'>$i</a>";
					}
				}
				if($curPage < $nums-1){
					$i = $curPage + 2;
					$strfenye .= "<a href='/admin/bworks/index.php?".$fyclass."&page=$i'>下一页</a>";
				}
				$strfenye .= "</div>";
				//处理第一页显示
				$sql .= $limit;
				// ohno($sql);
				$res = sqlquery("zhanshi",$sql);
				foreach ($res as $value) {
					$arr3[] = $value['classid'];
				}
			}else{
				for($i = 0; $i < count($res); $i++){
					$arr3[] = $res[$i]['classid'];
				}
			}
			//处理显示的classid的内容
			$classids = implode(",",$arr3);
			$sql = "select name,image from bworks where classid in($classids) order by id asc";
			$res = sqlquery("zhanshi",$sql);
			//正式写入容器
			if($res){
				for ($i = 0; $i < count($res); $i++) {
					$classid = $arr3[$i];
					$name = $res[$i]['name'];
					$image = $res[$i]['image'];
					$strzhuti .= "<div class='layui-block anli'>";
					$strzhuti .= "<img src='/images/".$image."'>";
					$strzhuti .= "<p class='layui-inline'><a href='/admin/bworks/index.php?classid=$classid'>$name</a></p>";
					$strzhuti .= "</div>";
				}
				$strzhuti .= $strfenye;
			}
		}
	}else{//加载详细内容
		$classid = $_GET['classid'];
		if($classid){
			$sql = "select * from bworks where classid=$classid";
			$res = sqlquery("zhanshi",$sql,false);
			// $xsName = $res['name'];
			$xsContent = $res['content'];
			$xsImage = $res['image'];
			$xsVisit = $res['visit'];
			$jsstr = "tag = true;visit = $xsVisit;var classid = $classid;";
			$xsRelT = date("Y-m-d H:i:s",$res['releasetime']);
			//导入容器
			$strzhuti .= "<p>浏览量:$xsVisit</p>";
			$strzhuti .= "<p>发布时间:$xsRelT</p>";
			$strzhuti .= "<img src='/images/".$xsImage."'><div class='layui-block'>";
			$strzhuti .= $xsContent."</div>";
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
			<p>SOLUTION</p>
			<span>解决方案</span>
		</div>
	</div>
	<!-- main开始 -->
	<div class="layui-main zhuti">
		<div class="zhuti-left layui-inline">
			<h3 class="layui-block">
				S
				<p class="layui-inline">olution<br/><span>解决方案</span></p>
			</h3>
			<div>
				<?php echo $arr2[3]; ?>
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
	var visit,tag = false;
	<?php echo $jsstr; ?>
	if(tag){
		setTimeout(function(){
			$.ajax({
				url:'/admin/bworks/work_add_save.php',
				data:{'visit':visit,'classid':classid},
				method:'POST'
			});
		},1);
	}
</script>
</html>