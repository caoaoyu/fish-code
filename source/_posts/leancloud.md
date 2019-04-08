---
title: 初用 LeanCloud - 保存对象
date: 2017-12-28
tags:
  - LeanCloud
---

#### 更改字段值并进行更新：

```javascript
var TodoFolder = AV.Object.extend('TodoFolder');
var todoFolder = new TodoFolder();
todoFolder.set('name','工作');
todoFolder.set('priority',1);
todoFolder.save().then(function (todo) {
  console.log('objectId is ' + todo.id);
}, function (error) {
  console.error(error);
});
```

#### 批量保存

```javascript
const query = new AV.Query('Todo')
query.find().then(results => {
  var data = results.map(m => m.set('active', true))
  return AV.Object.saveAll(data);
})
```
