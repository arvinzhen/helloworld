<ul class="news-mid text-center">
	<li {eq name="offer" value="1"}class="mid-nav-on"{/eq}><a href="{:url('@index/job/index')}">招聘信息</a></li>
	<li {eq name="message" value="1"}class="mid-nav-on"{/eq}><a href="{:url('@index/job/index/1')}">在线求职</a></li>
    {volist name="datamidnav" id="v"}
    <li {eq name="v.id" value="$pz"}class="mid-nav-on"{/eq}><a href="{:url('@index/job/index/'.$v.id)}">{$v.title}</a></li>
    {/volist}
    <div class="clearfix"></div>
</ul>