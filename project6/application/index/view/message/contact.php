<div id="allmap"></div>
<script type="text/javascript">
    // 百度地图API功能
    $(document).ready(function(){
        var map = new BMap.Map("allmap");    // 创建Map实例
        map.centerAndZoom(new BMap.Point(115.851937,28.688695), 11);  // 初始化地图,设置中心点坐标和地图级别

        //添加地图类型控件
        map.addControl(new BMap.MapTypeControl({
            mapTypes:[
                BMAP_NORMAL_MAP,
                BMAP_HYBRID_MAP
            ]}));     
        map.setCurrentCity("南昌");          // 设置地图显示的城市 此项是必须设置的
        map.enableScrollWheelZoom(true);     //开启鼠标滚轮缩放
    });
</script>