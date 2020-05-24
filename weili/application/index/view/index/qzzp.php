<ul>
	{volist name="qzzp" id="v" empty="空"}
     <li><a href="{:url('@index/job/index')}"> 
	<h6>{$v.name}</h6> 
	<p>{$v.dpm}</p> 
	</a></li> 
	{/volist}
</ul>
