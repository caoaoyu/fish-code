---
title: Highcharts实例
date: 2016-09-21
tags:
  - Highcharts
---

```javascript
function highchats(data){
   var times = [],orders = [], deals = [],succs= [];
   for (var i = 0; i < data.list.length; i++) {
       times.push(data.list[i]['data_time']);
       orders.push(data.list[i]['order_total']);
       succs.push(data.list[i]['order_succ']);
       deals.push(parseFloat(data.list[i]['order_rate'].replace(/\%/,"" )));  //替换百分号
    }
    //承载容器container
    new Highcharts.chart('container', {
        title: {
                text: '数据',
                x: -20
            },
            xAxis: {
                categories: times,
            },       
            yAxis: [
            {
                labels: {
                    format: '{value}K',
                    style: {
                        color: Highcharts.getOptions().colors[3]
                    }
                },
                title: {
                    text: '数-1',
                    style: {
                        color: Highcharts.getOptions().colors[1]
                    }
                }
            },
            {
                labels: {
                    enabled: false, //多元轴设置labels不显示
                }, 
            title: {
                    text: '数-2',
                }     
                
            },
            {
                title: {
                    text: '数-3',
                    style: {
                        color: Highcharts.getOptions().colors[0]
                    }
                },
                labels: {
                    format: '{value} %',
                    style: {
                        color: Highcharts.getOptions().colors[0]
                    }
                },
                opposite: true
            }],
            tooltip: {
                shared: true
            },
            legend: {
                layout: 'vertical',
                align: 'right',
                verticalAlign: 'middle',
                borderWidth: 0
            },
            series: [{
                name: '数-1',
                type: 'spline',
                yAxis: 2,
                data: deals,
                tooltip: {
                    valueSuffix: '%'
                }
            }, {
                name: '数-2',
                type: 'spline',
                yAxis: 1 ,
                data: succs,
                tooltip: {
                    valueSuffix: '单'
                }
            },
            {
                name: '数-3',
                type: 'spline',
                yAxis: 0 ,
                data: orders,  //orders 是一个数组
                tooltip: {
                    valueSuffix: '单'
                }
            }]
        });
    }
```