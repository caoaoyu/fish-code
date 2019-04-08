---
title: Google Map 了解
date: 2017-04-10
tags:
  - map
---

今天了解了一下地图，遍地查询使用方法 全都没有找到，我也正在学习，就记录一下过程。

我先用的是 Google Map ，首先，你要去 Google 上面申请一个 Key，但我觉得不如百度地图上面更新快和详细，而且它竟然限制我使用次数，我明明都没开始用~~~可能是我我还不懂这个过程吧。

#### 申请 Key

```javascript
<script async defer
        src="https://maps.googleapis.com/maps/api/js?key=ou Key&callback=initMap">
</script>
```
在最后引入这个 JS 在Key那个参数哪里，需要填写你申请回来的Key，不然是调用不成功的哦~

```javascript
<div id="map"></div>
<script>
    var map;
    var beijing = {lat: 39.92, lng: 116.46}; //这里是控制显示那个地方，第一个是纬度，第二个是经度。
    function initMap() {
        map = new google.maps.Map(document.getElementById('map'), {
            center: beijing,
            zoom: 12  //缩放比例，数字越大，显示的地图就会更详细
        });
        var marker = new google.maps.Marker({
            position: beijing,
            map: map    //有个图标，显示在你定位的地方
        });
    }
</script>
```
这只是我开的一个头，先记录下来吧~