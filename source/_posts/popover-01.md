---
title: 弹出框
date: 2017-03-10
tags:
  - bootstrap
---


弹出框是为任意元素添加一小块浮层,就像iPad上一样,用于存放非主要信息.弹出框的标题和内容的长度都是零的话将永远不会被显示出来.

插件依赖
加载顺序不可错

例:

```
require('./../../node_modules/bootstrap/js/tooltip.js');
require('./../../node_modules/bootstrap/js/popover.js');
```
初始化
由于性能的原因,工具提示和弹出框的 data 编程接口（data api）是必须要手动初始化的.

在一个页面上一次性初始化所有弹出框的方式是通过 data-toggle 属性选中他们:

```
$(function () {
  $('[data-toggle="popover"]').popover()
})
```
用法
通过 JavaScript 代码启动弹出框:

```$('#example').popover(options)```

```
<!-- 名称	类型	默认值	描述
animation	boolean	true	为弹出框赋予淡出的 CSS 动画效果
container	string false	false	向指定元素追加弹出框。实例： container: ‘body’
delay	number object	0	延迟显示和隐藏弹出框的毫秒数-对manual手动触发类型不适用。如果提供的是一个数字，那么延迟将会应用于显示和隐藏。
html	boolean	false	向弹出框插入 HTML。如果为 false，jQuery 的 text方法将被用于向 dom 插入内容。如果您担心 XSS 攻击，请使用 text。
placement	string function	right	规定如何定位弹出框(即top/bottom/left/right/auto)当指定为 auto 时，会动态调整弹出框。例如，如果 placement是”autoleft”，弹出框将会尽可能显示在左边，在情况不允许的情况下它才会显示在右边。
selector	string	false	如果提供了一个选择器,气泡框对象将被委派到指定的目标.在实践中,这用来启用动态HTML内容添加
template	string	
气泡框的标题将注入.popover 标题.气泡框的内容将被注入.popover 内容..arrow 将成为气泡框的箭头.最外层包装元素应该有.popover 类.
title string	function	‘’	如果标题属性不存在,默认标题值.如果给出一个函数,它将调用其这引用设置为气泡框附加到的元素.
trigger	string	‘click’	触发:click hover focus manual.
viewport	string	object function{selector:’body’,padding:0}	保持此元素的边界内气泡框.如果给出一个函数,它叫做与触发元素 DOM 节点作为其唯一参数.这种情况下设置为气泡框实例.
content	string function	‘ ‘	默认内容,如果data-content不存在.如果给出一个函数,它将调用其这引用设置为气泡框附加到的元素.
方法
方法	描述	实例
Options: .popover(options)	向元素集合附加弹出框句柄。	$().popover(options)
Toggle: .popover(‘toggle’)	切换显示/隐藏元素的弹出框	$(‘#ID’).popover(‘toggle’)
Show: .popover(‘show’)	显示元素的弹出框	$(‘#ID’).popover(‘show’)
Hide: .popover(‘hide’)	隐藏元素的弹出框	$(‘#ID’).popover(‘hide’)
Destroy: .popover(‘destroy’)	隐藏并销毁元素的弹出框	$(‘#ID’).popover(‘destroy’)
默认触发时间是click,点击就会触发事件,不想自动触发事件设置 data-trigger=”manual” 手动触发 -->
```

在input中应用

```
data-toggle="popover" //锚点
data-trigger="focus" //触发时间
data-content="You are my sunshine" //气泡内容
例：
<input type="text" class="form-control"  data-trigger="manual" data-container="body" 
 data-toggle="popover" data-placement="bottom" data-content=" 结束时间必须大于开始时间" 
 id="dM" placeholder="请选择日期" value="">
 ```

等属性复制过去就好。