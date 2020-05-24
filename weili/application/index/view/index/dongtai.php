<div id="dongtai">
	<li class="ac-on">公司动态</li>
	<li>行业快讯</li>
	<span><a href="#">更多&gt;&gt;</a></span>
</div>
<ul id="dtli">
	<li class="list-on">
		<ul class="small-new">
			{volist name="dt" id="v" empty="暂无"}
				<li>
					<a href="{:url('@index/news/show/'.$v.classid)}">
						<img src="{$v.content}">
						<h3>{$v.title}</h3>
						<p>{$v.intro}</p>
					</a>
				</li>
			{/volist}
		</ul>
	</li>
	<li class="list-off">
		<ul class="small-new">
			{volist name="kx" id="m" empty="暂无"}
				<li>
					<a href="{:url('@index/news/show/'.$m.classid)}">
						<img src="{$m.content}">
						<h3>{$m.title}</h3>
						<p>{$m.intro}</p>
					</a>
				</li>
			{/volist}
		</ul>
	</li>
</ul>
