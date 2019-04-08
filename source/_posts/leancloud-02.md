---
title: 初用 LeanCloud - 查询
date: 2017-07-26
tags:
  - LeanCloud
---

#### 创建查询实例
```javascript
const query = new AV.Query('Todo');
```
#### 最基础的用法是根据 objectId 来查询对象：

```javascript
const query = new AV.Query('Todo'); query.get('57328ca079bc44005c2472d0').then(function (todo) {
// todo 就是 id 为 57328ca079bc44005c2472d0 的 Todo 对象实例
}, function (error) {
  // 异常处理
});
```

#### 比较查询
|      |        |
|---|---:|
|逻辑操作	|AVQuery 方法|
|等于	|equalTo|
|不等于	|notEqualTo|
|大于	|greaterThan|
|大于等于	|greaterThanOrEqualTo|
|小于	|lessThan|
|小于等于	|lessThanOrEqualTo|
利用上述表格介绍的逻辑操作的接口，我们可以很快地构建条件查询。

例如，查询 index 小于 2 的所有 Todo ：

```javascript
const query = new AV.Query('Todo');
query.lessThan('index', 2);
```

比较查询只适用于可比较大小的数据类型，如整型、浮点等。

#### 多个查询条件
当多个查询条件并存时，它们之间默认为 AND 关系，即查询只返回满足了全部条件的结果。建立 OR 关系则需要使用 组合查询。

在简单查询中，不可以对一个对象的同一属性设置多个条件，因为先前的条件会被覆盖，查询只返回满足最后一个条件的结果。例如要找出 index 为 0 和 1 的所有 Todo，错误写法是：

```javascript
const query = new AV.Query('Todo');
  query.equalTo('index', 0);
  query.equalTo('index', 1);
  query.find().then(function (results) {
  // 如果这样写，第二个条件将覆盖第一个条件，查询只会返回 priority = 1 的结果
  }, function (error) {
  });
```

正确的方法为：

#### 组合查询

```javascript
const query1 = new AV.Query('Todo');
const query2 = new AV.Query('Todo');
    query1.equalTo('index', 0);
    query2.equalTo('index', 1);
const query = AV.Query.and(query1, query2);
```

#### Pointer
Pointer 只是个描述并没有具象的类与之对应，它与 AV.Relation 不一样的地方在于：AV.Relation 是在一对多的「一」这一方（上述代码中的一指 TodoFolder）保存一个 AV.Relation 属性，这个属性实际上保存的是对被关联数据多的这一方（上述代码中这个多指 Todo）的一个 Pointer 的集合。而反过来，LeanStorage 也支持在「多」的这一方保存一个指向「一」的这一方的 Pointer，这样也可以实现一对多的关系。

简单的说， Pointer 就是一个外键的指针，只是在 LeanCloud 控制台做了显示优化。

现在有一个新的需求：用户可以分享自己的 TodoFolder 到广场上，而其他用户看见可以给与评论，比如某玩家分享了自己想买的游戏列表（TodoFolder 包含多个游戏名字），而我们用 Comment 对象来保存其他用户的评论以及是否点赞等相关信息，代码如下：

```javascript
const comment = new AV.Object('Comment');// 构建 Comment 对象
comment.set('likes', 1);// 如果点了赞就是 1，而点了不喜欢则为 -1，没有做任何操作就是默认的 0
comment.set('content', '这个太赞了！楼主，我也要这些游戏，咱们团购么？');
// 假设已知被分享的该 TodoFolder 的 objectId 是 5735aae7c4c9710060fbe8b0
const targetTodoFolder = AV.Object.createWithoutData('TodoFolder', '5735aae7c4c9710060fbe8b0');
comment.set('targetTodoFolder', targetTodoFolder);
comment.save();//保存到云端

```

##### Pointer 查询
假如在 Todo 里面有一个 Pointer 字段 A，一般情况下 直接

```javascript
const query1 = new AV.Query('Todo');
    query1.equalTo('index', 0);
    query1.include('A')
```