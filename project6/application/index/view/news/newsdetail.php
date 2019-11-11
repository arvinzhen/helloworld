{empty name="newsdetail"}
<div>当前内容为空</div>
{else /}
    <div class="sz-read-title">
        <h1>{$newsdetail.title}</h1>
        <p><span>发布时间:&nbsp;&nbsp;&nbsp;{$newsdetail.releasetime}</span>|<span>浏览次数:&nbsp;&nbsp;&nbsp;{$newsdetail.viewpage}</span></p>
    </div>
    <div class="sz-read-content">
        {$newsdetail.content|raw}
    </div>
{/empty}
<script>
    (function(){
        $.ajax({
            url:"{:url('@index/news/addv/'.$newsdetail.id)}"
            ,method:"GET"
        });
    })();
</script>
<div class="sz-simple-page">
    {$page|raw}
</div>
