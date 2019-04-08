---
title: 如何实现时间相减得到所需时差
date: 2016-10-10
tags:
  - jQuery
---

```
function order_time(time){
    var now_time = moment().format('X'); //moment.js 日期插件
    time = time,
    total = (time - now_time), 
    day = parseInt(total / (24*60*60)),//计算整数天数
    afterDay = total - day*24*60*60,//取得算出天数后剩余的秒数
    hour = parseInt(afterDay/(60*60)),//计算整数小时数
    afterHour = total - day*24*60*60 - hour*60*60,//取得算出小时数后剩余的秒数
    min = parseInt(afterHour/60),//计算整数分
    afterMin = total - day*24*60*60 - hour*60*60 - min*60;//取得算出分后剩余的秒数
    console.log([day,hour,min,afterMin].join(':'))
    }
```
