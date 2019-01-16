---
title: 原型 - 继承 - 原型链
date: 2017-12-26
tag: #javascript
---

JavaScript 只有一种结构：对象。

原型
每个对象都有一个私有属性 称之为 Prototype

原型链
它持有一个连接到另一个称为其 prototype 对象（原型对象）的链接。该 prototype 对象又具有一个自己的原型，层层向上直到一个对象的原型为 null， null 没有原型，只作为这个原型链中的最后一个环节。

继承
JavaScript 并没有其他基于类的语言所定义的“方法”。在 JavaScript 里，任何函数都可以添加到对象上作为对象的属性，函数的继承与其他的属性继承没有差别

prototype 和 Object.getPrototype
prototype是用于类型的，而 Object.getPrototypeOf() 是用于实例的（instances），两者功能一致， 因此，当你执行：

```javascript
var person = new Person();
```

JavaScript 实际上执行的是：

```javascript
var person = new Object();
person.__proto__ = Person.prototype;
Person.call(person);
```
继承属性
// 让我们假设我们有一个对象 o, 其有自己的属性 a 和 b, o 的原型 o.__proto__有属性 b 和 c：

```javascript
{a: 1, b: 2}
{b: 3, c: 4}
最后, o.__proto__.__proto__ 是 null.
```

这就是原型链的末尾，即 null，
根据定义，null 没有__proto__.
整个原型链如下:

```javascript
{a:1, b:2} ---> {b:3, c:4} ---> null
console.log(o.a); // 1
// a是o的自身属性
console.log(o.b); // 2
// b是o的自身属性，o.__proto__上还有一个'b'属性,但是它不会被访问到.这种情况称为"属性遮蔽 (property shadowing)".
console.log(o.c); // 4
// c不是o的自身属性，c是o.__proto__的自身属性
console.log(o.d); // undefined
// o.__proto__.__proto__为null，停止搜索，没有d属性，返回undefined
当继承的函数被调用时，this 指向的是当前继承的对象，而不是继承的函数所在的原型对象。
var o = {
  a: 2,
  m: function(){
    return this.a + 1;
  }
};
console.log(o.m()); // 3
// 当调用 o.m 时,'this'指向了o.
var p = Object.create(o);
// p是一个对象, p.__proto__是o.
p.a = 4; // 创建 p 的自身属性a.
console.log(p.m()); // 5
// 调用 p.m 时, 'this'指向 p 又因为 p 继承 o 的 m 函数 此时的'this.a' 即 p.a，即 p 的自身属性 'a'

```