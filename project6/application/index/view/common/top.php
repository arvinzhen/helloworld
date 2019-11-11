<div class="sz-main">
	<div>
		<p style="float: right;margin-top:28px;font-size: 14px;">全国服务热线:<span class="x-orange">0791-82203969</span></p>
		<form class="search" action="{:url('@index/news/search')}" method="GET">
			<input type="text" name="keyword" placeholder="请输入搜索关键字">
			<img id="search" src="__IMAGE__/search_icon.png">
		</form>
		<div class="sz-nav">
			<li><a href="/">网站首页</a></li>
			{volist name="data" id="v"}
				<li>
					<a href="{$v.link}">{$v.title}</a>
					{$v.coin|raw}
				</li>
			{/volist}
		</div>
	</div>
</div>
<script>
	$(document).on('click','#search',function(){
		$(this).parent('form').submit();
	})
</script>
<script>
	$(document).ready(function(){
		$(".sz-nav>li").eq({$xianshi}).addClass("on");
	})
</script>
