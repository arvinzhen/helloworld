<div id="dtmid">
	<li class="ac-on">政策法规</li>
	<span><a href="#">更多&gt;&gt;</a></span>
</div>
<ul id="dongtaili">
	<li class="list-on">
		<ul>
			{volist name="dtmid" id="v" empty="暂无"}
				<li>
					<a href="{:url('@index/news/show/'.$v.classid)}">
						<h3>{$v.title}</h3>
					</a>
				</li>
			{/volist}
		</ul>
	</li>
</ul>
