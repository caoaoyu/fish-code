---
title: 如何实现时间相减得到所需时差
date: 2016-10-10
tag: #jQuery#
---

```javascript
function order_time(time){
    var now_time = moment().format('X'); //moment.js 日期插件
    var time = time;
    var total = (time - now_time); 
    var day = parseInt(total / (24*60*60));//计算整数天数
    var afterDay = total - day*24*60*60;//取得算出天数后剩余的秒数
    var hour = parseInt(afterDay/(60*60));//计算整数小时数
    var afterHour = total - day*24*60*60 - hour*60*60;//取得算出小时数后剩余的秒数
    var min = parseInt(afterHour/60);//计算整数分
    var afterMin = total - day*24*60*60 - hour*60*60 - min*60;//取得算出分后剩余的秒数
    console.log([day,hour,min,afterMin].join(':'))
}
```