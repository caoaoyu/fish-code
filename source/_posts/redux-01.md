---
title: dva Redux mergeProps 语法
date: 2017-05-15
tags:
  - Redux
---
```javascript
connect(
    [mapStateToProps],
    [mapDispatchToProps],
    [mergeProps],
    [options]
    )
```
连接 React 组件与 Redux store。

连接操作不会改变原来的组件类。
反而返回一个新的已与 Redux store 连接的组件类
mergeProps 是 connect 其中一个 fun， 用来合并 state 中的数据

语法：
```javascript
function mergeProps(stateProps, dispatchProps, ownProps) {
  return {
    ...stateProps,
    ...dispatchProps,
    ...ownProps,
    all: all(stateProps),
  };
}
```