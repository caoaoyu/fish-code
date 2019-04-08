---
title: 初用 LeanCloud - 新建一个对象
date: 2017-07-21
tags:
  - LeanCloud
---

```javascript
const Todo = AV.Object.extend('Todo');
// Todo 代表要在哪张数据表里新建一条数据
const todo = new Todo();
// 设置名称
todo.set('name','工作');
// 'name' 代表你要保存到哪个属性中， '工作'：值
todo.save().then(function (todo) {
    console.log('objectId is ' + todo.id);
  }, function (error) {
    console.error(error);
 });
 ```

创建完成后，打开 控制台 > 存储，点开 Todo ，就可以看到刚才添加的数据。

|参数|必须 |说明|
|---|---:|---:|
|内置属性	|类型|	描述|
|objectId	|String|	该对象唯一的 Id 标识|
|ACL	ACL	该对象的权限控制，实际上是一个 JSON 对象，控制台做了展现优化。|
|createdAt	|Date|	该对象被创建的 UTC 时间|
|updatedAt	|Date|	该对象最后一次被修改的时间|
