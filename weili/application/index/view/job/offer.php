<div class="join_us">
<ul id="xingxi"><li>
    <dd width="395">招聘岗位</dd>
    <dd width="180">招聘部门</dd>   
    <dd width="140">学历要求</dd>
    <dd width="150">预计薪资</dd>   
    <dd width="140">聘人数</dd>   
    <dd width="170">发布时间</dd>
</li>
{volist name="offdata" id="v" empty="<li>没有相关的信息哦,请添加一点职位信息吧</li>"}
  <li class="bg1">
    <dd>{$v.name}</dd>
    <dd>{$v.dpm}</dd>
    <dd>{$v.edu}</dd>
    <dd>{$v.eps}</dd>
    <dd>{$v.num}</dd>
    <dd>{$v.releasetime}</dd>
    <ul class="xiangxi">
      <li>
        <h5>岗位职责：</h5>
        <p>{$v.duty}</p>
      </li>
      <li>
        <h5>岗位要求：</h5>
        <p>{$v.claim}</p>
      </li>
      <li>
        <h5>福利待遇：</h5>
        <p>{$v.treat}</p>
      </li>
    </ul>
{/volist}
</ul>
<div class="page">
    {$offpage|raw}
</div>
</div>
<script>
    $(document).on('click','#xingxi>li',function(){
        if($(this).attr("class") == 'bg1'){
            $(this).removeClass("bg1").addClass("bg2");
        }else{
            $(this).removeClass("bg2").addClass("bg1");
        }
        $(this).children(".xiangxi").toggle();
    })
</script>