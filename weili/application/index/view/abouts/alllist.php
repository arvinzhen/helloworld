{eq name="tag" value="0"}
    {$alllist.content|raw}
{else}
<div class="main_qywh">
    <h1>荣誉资质<span></span></h1>
</div>
<div class="swiper-container">
    <div class="swiper-wrapper">
        {volist name="alllist" id="v"}
            <div class="swiper-slide"><img src="{$v.imglist}"></div>
        {/volist}
    </div>
</div>
<div class="swiper-button-next"></div>
<div class="swiper-button-prev"></div>
<script>
    var swiper = new Swiper('.swiper-container', {
        slidesPerView: 3,
        spaceBetween: 30,
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
        },
        direction : 'horizontal',
        autoplay:true,
        loop:true
    });
</script>
{/eq}