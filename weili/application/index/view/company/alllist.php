<div class="sz-read-title">
    <h1>{$alllist.title}</h1>
    <p><span>发布时间:{$alllist.releasetime}</span>|<span>{$alllist.viewpage}</span></p>
</div>
<div class="content1">
    {$alllist.content|raw}
</div>
<script>
    (function(){
        $.ajax({
            url:"{:url('@index/company/addv/'.$alllist.id)}"
            ,method:"GET"
        });
    })();
</script>