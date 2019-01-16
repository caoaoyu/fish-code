---
title: RN Text OnClick 事件不起作用
date: 2017-05-17
tag: #ReactNative#
---

```html
<Text onClick={this.Look} >
    查看的资料
 </Text>
 ```

Text 中点击事件不生效。换到另一行代码里事件就可以正常执行,放到 Text 里面就不行。

这是因为 onClick 应该只能用在 Touch 开头的组件中，得用Touchable这样的组件包起来，在Touchable组件中定义事件。

官网也有例子：
[TouchableHighlight](https://facebook.github.io/react-native/docs/touchablehighlight.html)