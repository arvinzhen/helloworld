<ul class="news-mid text-center">
    {volist name="datamidnav" id="v"}
    <li {eq name="v.id" value="$pz"}class="mid-nav-on"{/eq}><a href="{:url('@index/company/index/'.$v.id)}">{$v.title}</a></li>
    {/volist}
    <div class="clearfix"></div>
</ul>