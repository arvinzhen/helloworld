{eq name="alllistpz" value="1"}
    {volist name="alllist" id="v"}
        <li>
            <div class="text-center">
                <b>{$v.timeb}</b>
                <span>{$v.releasetime}</span>
            </div>
            <a href="{:url('@index/staff/show/'.$v.classid)}">
                <h2>{$v.title}</h2>
                <p>{$v.intro}</p>
            </a>
        </li>
    {/volist}
    <div class="page">
        {$alllpage|raw}
    </div>
{else/}
    <li>暂时还没有这方面的内容</li>
{/eq}







