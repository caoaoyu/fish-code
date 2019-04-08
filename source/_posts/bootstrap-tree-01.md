---
title: bootstrap 的 tree 扩展插件
date: 2017-03-10
tags:
- bootstrap
---

安装:
```javascript
$ bower install bootstrap-treeview
```

引入:
```javascript
<link href = "bootstrap.css" rel="stylesheet">
<!-- Required Javascript -->
<script src = "jquery.js"></script>
<script src = "bootstrap-treeview.js"></script>

```javascript
数据排序:
var list = [
    {did:1,fid:0,text:''},
    //根节点
    {did:1.1,fid:1,text:''},
    //根节点目录，父节点
    {uid:1,did:1.1,realname:''},
    //子节点
```
bootatrap tree 会把一些字符给"吃掉"
##### 生成树状图:
```javascript
$('#tree').treeview({
  data: tree,// tree 数据
  enableLinks: true,//启用a链接
});
```

```javascript enableLinks: true``` 
这个就是如果有链接，就需要开启这个，不然的话不能点击

想再自定义事件没有 class ，没有 ID 怎么办？，开源的东西动源码呀~也不难，在生成的标签中 attr ID = XX就可以了嘛~

over~
