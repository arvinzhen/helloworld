<div class="xzzx_list">
	<ul>
		<li>
		    <dd>名称</dd>
		    <dd>发布时间</dd>   
		    <dd>下载</dd>
		</li>
{volist name="data7" id="v" empty="<li>当前为空</li>>"}
        <li> 
			 <dd>{$v.title}</dd> 
			 <dd>{$v.releasetime}</dd> 
			 <dd><a href="__UPLOAD__/file/{$v.path}" download="{$v.dp}">立即下载</a></dd> 
 		</li> 
{/volist}
   </ul>
</div>