---
title: Sort()排序
date: 2016-09-29
tags:
  - javascript
---

遇到的问题：表格排序

```
var arr = [
    {
        a:3,
        b:'abc',
    },
    {
        a:1,
        b:'abc1',
    },
    {
        a:9,
        b:'abc2',
    },
    {
        a:8,
        b:'abc2',
    },
    {
        a:7,
        b:'abc2',
    },
    {
        a:2,
        b:'abc2',
    },
];
```

第一种：sort()方法
如果调用该方法时没有使用参数，将按字母顺序对数组中的元素进行排序，说得更精确点，是按照字符编码的
顺序进行排序。要实现这一点，首先应把数组的元素都转换成字符串（如有必要），以便进行比较。
如果想按照其他标准进行排序，就需要提供比较函数，该函数要比较两个值，然后返回一个用于说明这两个值的
相对顺序的数字。比较函数应该具有两个参数 a 和 b，其返回值如下：
若 a 小于 b，在排序后的数组中 a 应该出现在 b 之前，则返回一个小于 0 的值。
若 a 等于 b，则返回 0。
若 a 大于 b，则返回一个大于 0 的值。

```function sortNum(peva,nextb){
	return peva.a - nextb.a;
}
console.log(arr.sort(sortNum))```
第二种：快速排序
定义其中的一个数，for 循环数组中的其他值进行比较，小的放左边，大的放右边，生成两个数组，最后将两个数组进行连接

```function qsort(arr){
    var left_arr = [];
    var right_arr = [];
    var num = arr[0].a;
    for(var i = 1; i < arr.length; i++){
        if(arr[i].a > num){
            right_arr.push(arr[i]);
        }
        else{
            left_arr.push(arr[i]);
        }
    }
    if(left_arr.length > 1){
        left_arr = qsort(left_arr);
    }
    if(right_arr.length > 1){
        right_arr = qsort(right_arr);
    }
    return  left_arr.concat([arr[0]], right_arr);
}
console.log(qsort(arr));```
